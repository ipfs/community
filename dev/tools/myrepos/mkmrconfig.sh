#!/usr/bin/env bash
set -eo pipefail; [[ $MKMRCONFIG_TRACE ]] && set -x

# Scans Github organizations and emits a config file for use with `myrepos`.
#
# Dependencies:
# - myrepos, https://myrepos.branchable.com, e.g. apt-get install myrepos
#
# Usage:
# > cd $GOPATH/src/github.com/
# > path/to/mkmrconfig.sh > .mrconfig
# > mr checkout
# > mr status
#
# You might need to use the --trust-all flag for `mr checkout`.
#
# Notes:
# - Repos not starting in "go-" need to be added to `$more_repos`.
# - Watch out for Github API's requests limit, or get an OAuth token for `$auth`.

orgs=(ipfs ipld libp2p multiformats gxed)
filter='-P ^go-'

more_repos=()
more_repos+=("ipfs/ipfs,git@github.com:ipfs/ipfs.git")
more_repos+=("ipfs/community,git@github.com:ipfs/community.git")
more_repos+=("ipfs/specs,git@github.com:ipfs/specs.git")
more_repos+=("ipfs/infrastructure,git@github.com:ipfs/infrastructure.git")
more_repos+=("ipfs/ipfs-pages,git@github.com:ipfs/ipfs-pages.git")
more_repos+=("libp2p/libp2p,git@github.com:libp2p/libp2p.git")
more_repos+=("multiformats/multiformats,git@github.com:multiformats/multiformats.git")
more_repos+=("multiformats/multiaddr,git@github.com:multiformats/multiaddr.git")
more_repos+=("multiformats/multihash,git@github.com:multiformats/multihash.git")
more_repos+=("multiformats/multistream,git@github.com:multiformats/multistream.git")
more_repos+=("multiformats/multigram,git@github.com:multiformats/multigram.git")
more_repos+=("multiformats/multicodec,git@github.com:multiformats/multicodec.git")
more_repos+=("ipld/ipld,git@github.com:ipld/ipld.git")
more_repos+=("ipld/specs,git@github.com:ipld/specs.git")

# github oauth, e.g. "-u lgierth:personalaccesstoken"
auth=""

list_repos () {
  org="$1"
  per_page=100
  page=1
  [ "$2" ] && page="$2"
  repos=$(curl $auth "https://api.github.com/orgs/$org/repos?page=$page&per_page=$per_page" 2>/dev/null | jq -r '.[] | "\(.name),\(.ssh_url)"')
  i=$(printf %s\\n "$repos" | wc -l)
  printf %s\\n "$repos"
  if test "$i" -ge "$per_page"; then
    list_repos "$org" $(expr "$page" + 1)
  fi
}

for org in ${orgs[@]}; do
  >&2 echo "# scanning github.com/$org"
  for r in `list_repos "$org" | grep $filter`; do
    name="$(echo "$r" | cut -d, -f1)"
    url="$(echo "$r" | cut -d, -f2)"
    echo "[$org/$name]"
    echo "checkout = git clone $url"
    echo
  done
done

>&2 echo "# adding more_repos"
for r in ${more_repos[@]}; do
  name="$(echo "$r" | cut -d, -f1)"
  url="$(echo "$r" | cut -d, -f2)"
  echo "[$name]"
  echo "checkout = git clone $url"
  echo
done
