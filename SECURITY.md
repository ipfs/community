# Security Policy

## Reporting a Vulnerability

The IPFS protocol and its implementations are in varying but active levels of development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. We take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments -- for example, expose a remote execution exploit -- please send your report privately to either:
1. The implementation team if its an issue with a particular implementation OR
2. security@ipfs.io if you're not sure or if its an underlying issue with an IPFS protocol.
Please DO NOT file a public issue.

If the issue is a protocol weakness or something not yet deployed, just discuss it openly.

## Reporting Abuse

While [IPFS is a stack of protocols and tools for moving content-addressed data](https://specs.ipfs.tech/architecture/principles/), there is often confusion about one particular manifestation of IPFS in [HTTP Gateways](https://docs.ipfs.tech/concepts/ipfs-gateway/) like https://ipfs.io/ipfs.  We have seen a lot of reports about **abuse 
 from these IPFS gateways** (e.g. using an HTTP gateway for malware hosting, distributing questionable content, phishing purposes, etc.).  These should be reported directly to the HTTP gateway product that provides the data.
To report abuse about the ipfs.io HTTP gateway, please send an email to [abuse@ipfs.tech](mailto:abuse@ipfs.tech).  Do not open an issue here since IPFS is a community project, and is not the same as the ipfs.io HTTP gateway.
