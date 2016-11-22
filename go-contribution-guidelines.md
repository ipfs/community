# Go Contribution Guidelines

Many IPFS projects use Go. Please check these guidelines before contributing go code to an IPFS repository.

## Requirements

- Run `go fmt` before pushing any code.
- Run `golint` and `go vet` too -- some things (like protobuf files) are expected to fail.

## A Short Introduction

If you are new to our Go development workflow:

- Ensure you have [Go installed on your system](https://golang.org/doc/install).
- Make sure that you have the environment variable `GOPATH` set somewhere, e.g. `$HOME/gopkg`
- Clone ipfs into the path `$GOPATH/src/github.com/ipfs/go-ipfs`
  - NOTE: This is true even if you have forked go-ipfs, dependencies in go are path based and must be in the right locations.
- You are now free to make changes to the codebase as you please.
- You can build the binary by running `go build ./cmd/ipfs` from the go-ipfs directory.
  - NOTE: when making changes remember to restart your daemon to ensure its running your new code.
  
## Imports

We strive to use following convention when it comes to imports. First come stdlib imports, then local repository imports and then all other external imports. Separate them using one empty new line so they are not reordered by `go fmt` or `goimports`.

Example:
```go
import (
	"context"
	"errors"
	"sync"
	"sync/atomic"

	blocks "github.com/ipfs/go-ipfs/blocks"
	dshelp "github.com/ipfs/go-ipfs/thirdparty/ds-help"

	logging "gx/ipfs/QmSpJByNKFX1sCsHBEp3R73FL4NF6FnQTEGyNAXHm2GS52/go-log"
	ds "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore"
	dsns "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore/namespace"
	dsq "gx/ipfs/QmbzuUusHqaLLoNTDEVLcSF6vZDHZDLPC7p4bztRvvkXxU/go-datastore/query"
	cid "gx/ipfs/QmcEcrBAMrwMyhSjXt4yfyPpzgSuV8HLHavnfmiKCSRqZU/go-cid"
)
```

If package name isn't the same as its directory usage of explicit name is recommended.

