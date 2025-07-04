[![test](https://github.com/ks6088ts-labs/template-typespec/actions/workflows/test.yaml/badge.svg?branch=main)](https://github.com/ks6088ts-labs/template-typespec/actions/workflows/test.yaml?query=branch%3Amain)

# template-typespec

A GitHub template repository for TypeSpec

## Prerequisites

- [Node 22.12.0+](https://nodejs.org/en/download)
- [GNU Make](https://www.gnu.org/software/make/)
- [TypeSpec](https://typespec.io/)

## Development instructions

### Local development

Use Makefile to run the project locally.

```shell
# help
make

# install dependencies for development
make install-deps-dev

# build the project
make build

# run CI tests
make ci-test
```
