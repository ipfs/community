Quick Start with the .NET API Client
ON THIS PAGE
1. Supported platforms
2. Install
3. Quick Start
4. Push data
5. Configure
6. Search
7. Search UI
Supported platforms#
The API client follows .NET Standard thus it’s compatible with:

.NET Standard 1.3 to .NET Standard 2.0,
.NET Core 1.0 to .NET Core 2.2,
.NET Framework 4.5 to .NET Framework 4.7.1
Install#
With the .NET CLI:#
dotnet add package Algolia.Search
With the Nuget Package Manager Console:#
Install-Package Algolia.Search
With Nuget.org#
Download the package on Nuget.org.

POCO, Types and Json.NET#
The API client is using Json.NET as serializer.

The Client is meant to be used with POCOs and Types to improve type safety and developer experience. You can directly index your POCOs if they follow the .NET naming convention for class and properties:

PascalCase for property names
PascalCase for class name
Example:

Copy

csharp
public class Contact
{
  public string ObjectID { get; set; }
  public string Name { get; set; }
  public int Age { get; set; }
}

SearchClient client = new SearchClient("YourApplicationID", "YourAdminAPIKey");
SearchIndex index = client.InitIndex("contact");

IEnumerable<Contact> contacts; // Fetch from DB or a Json file
index.SaveObjects(contacts);

// Retrieve one typed Contact
Contact contact = index.GetObject<Contact>("myId");

// Search one typed Contact
var result = index.Search<Contact>(new Query("contact"));
If you can’t follow the convention, you can still override the naming strategy with the following attribute [JsonProperty(PropertyName = "propertyName")]

However, it’s still possible to use JObject to add and retrieve records.

Copy

csharp
    using (StreamReader re = File.OpenText("contacts.json"))
    using (JsonTextReader reader = new JsonTextReader(re))
    {
        JArray batch = JArray.Load(reader);
        index.SaveObjects(batch).Wait();
    }

    // Retrieve one JObject Contact
    JObject contact = index.GetObject<JObject>("myId");
Algolia objects such as Rule, Synonym, Settings, etc., are now typed. You can enjoy the completion of your favorite IDE while developing with the library.

Example with the Settings class:

Copy

csharp
IndexSettings settings = new IndexSettings
{
    SearchableAttributes = new List<string> {"attribute1", "attribute2"},
    AttributesForFaceting = new List<string> {"filterOnly(attribute2)"},
    UnretrievableAttributes = new List<string> {"attribute1", "attribute2"},
    AttributesToRetrieve = new List<string> {"attribute3", "attribute4"}
    // etc.
};

index.SetSettings(settings);
Asynchronous & Synchronous Methods#
The API client provides both Async and Sync methods for every API endpoint. Asynchronous methods are suffixed with the Async keyword. You can use any of them depending on your needs.

Copy

csharp
// Synchronous
Contact res = index.GetObject<Contact>("myId");

// Asynchronous
Contact res = await index.GetObjectAsync<Contact>("myId");
HttpClient Injection#
The API client is using the built-in HttpClient of the .NET Framework.

The HttpClient is wrapped in an interface: IHttpRequester. If you wish to use another HttpClient, you can inject it through the constructor while instantiating a SearchClient, AnalyticsClient, and InsightsClient.

Example:

Copy

csharp
IHttpRequester myCustomHttpClient = new MyCustomHttpClient();

SearchClient client = new SearchClient(
    new SearchConfig("YourApplicationID", "YourAdminAPIKey"),
    myCustomHttpClient
);
Multithreading#
The client is designed to be thread-safe. You can use SearchClient, AnalyticsClient, and InsightsClient in a multithreaded environment.

Cross-Platform#
As the API client is following .NET Standard, it can be used on Windows, Linux, or MacOS. The library is continuously tested in all three environments. If you want more information about .NET Standard, you can visit the official page.

Quick Start#
In 30 seconds, this quick start tutorial will show you how to index and search objects.

Initialize the client#
To start, you need to initialize the client. To do this, you need your Application ID and API Key. You can find both on your Algolia account.

Copy

csharp
SearchClient client = new SearchClient("YourApplicationID", "YourAdminAPIKey");
SearchIndex index = client.InitIndex("your_index_name");
The API key displayed here is your Admin API key. To maintain security, never use your Admin API key on your front end, nor share it with anyone. In your front end, use the search-only API key or any other key that has search-only rights.

Push data#
Without any prior configuration, you can start indexing 500 contacts in the contacts index using the following code:

Copy

csharp
SearchIndex index = client.InitIndex("contacts");

using (StreamReader re = File.OpenText("contacts.json"))
using (JsonTextReader reader = new JsonTextReader(re))
{
    JArray batch = JArray.Load(reader);
    index.SaveObjects(batch, autoGenerateObjectId: true);
    // Asynchronous
    // index.SaveObjectsAsync(batch, autoGenerateObjectId: true);
}
Configure#
You can customize settings to fine tune the search behavior. For example, you can add a custom ranking by number of followers to further enhance the built-in relevance:

Copy

csharp
IndexSettings settings = new IndexSettings
{
    CustomRanking = new List<string> { "desc(followers)"},
};

index.SetSettings(settings);

// Asynchronous
await index.SetSettingsAsync(settings);
You can also configure the list of attributes you want to index by order of importance (most important first).

Algolia is designed to suggest results as you type, which means you’ll generally search by prefix. In this case, the order of attributes is crucial to decide which hit is the best.

Copy

csharp
IndexSettings settings = new IndexSettings
{
    SearchableAttributes = new List<string>
        {"lastname", "firstname", "company", "email", "city"}
};

// Synchronous
index.SetSettings(settings);

// Asynchronous
await index.SetSettingsAsync(settings);
Search#
You can now search for contacts by firstname, lastname, company, etc. (even with typos):

Copy

csharp
// Search for a first name
index.Search<Contact>(new Query { "jimmie" });
// Asynchronous
await index.SearchAsync<Contact>(new Query { "jimmie" });

// Search for a first name with typo
index.Search<Contact>(new Query { "jimie" });
// Asynchronous
await index.SearchAsync<Contact>( new Query { "jimie" });

// Search for a company
index.Search<Contact>( new Query { "california paint" });
// Asynchronous
await index.SearchAsync<Contact>( new Query { "california paint" });

// Search for a first name and a company
index.Search<Contact>( new Query { "jimmie paint"" });
// Asynchronous
await index.SearchAsync<Contact>(new Query { "jimmie paint" });
Search UI#
If you’re building a web application, you may be interested in using one of our front-end search UI libraries.

The following example shows how to quickly build a front-end search using InstantSearch.js

index.html#
Copy

html
<!doctype html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/instantsearch.css@7.3.1/themes/algolia-min.css" integrity="sha256-HB49n/BZjuqiCtQQf49OdZn63XuKFaxcIHWf0HNKte8=" crossorigin="anonymous">
</head>
<body>
  <header>
    <div id="search-box"></div>
  </header>

  <main>
      <div id="hits"></div>
      <div id="pagination"></div>
  </main>

  <script type="text/html" id="hit-template">
    <div class="hit">
      <p class="hit-name">
        {{#helpers.highlight}}{ "attribute": "firstname" }{{/helpers.highlight}}
        {{#helpers.highlight}}{ "attribute": "lastname" }{{/helpers.highlight}}
      </p>
    </div>
  </script>

  <script src="https://cdn.jsdelivr.net/npm/algoliasearch@3.35.0/dist/algoliasearchLite.min.js" integrity="sha256-3Laj91VXexjTlFLgL8+vvIq27laXdRmFIcO2miulgEs=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/instantsearch.js@3.4.0/dist/instantsearch.production.min.js" integrity="sha256-pM0n88cBFRHpSn0N26ETsQdwpA7WAXJDvkHeCLh3ujI=" crossorigin="anonymous"></script>
  <script src="app.js"></script>
</body>
app.js#
Copy

js
// Replace with your own values
const searchClient = algoliasearch(
  'YourApplicationID',
  'YourSearchOnlyAPIKey' // search only API key, not admin API key
);

const search = instantsearch({
  indexName: 'contacts',
  searchClient,
  routing: true,
});

search.addWidgets([
  instantsearch.widgets.configure({
    hitsPerPage: 10,
  })
]);

search.addWidgets([
  instantsearch.widgets.searchBox({
    container: '#search-box',
    placeholder: 'Search for contacts',
  })
]);

search.addWidgets([
  instantsearch.widgets.hits({
    container: '#hits',
    templates: {
      item: document.getElementById('hit-template').innerHTML,
      empty: `We didn't find any results for the search <em>"{{query}}"</em>`,
    },
  })
]);

search.start();
