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
