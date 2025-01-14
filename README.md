# DocuSign API Client

[![CircleCI](https://circleci.com/gh/tandemequity/docusign_elixir.svg?style=svg)](https://circleci.com/gh/tandemequity/docusign_elixir) [![Ebert](https://ebertapp.io/github/tandemequity/docusign_elixir.svg)](https://ebertapp.io/github/tandemequity/docusign_elixir)

Unofficial DocuSign Elixir Library used to interact with the eSign REST API. Send, sign, and approve documents using this client.

## Installation

The package can be installed by adding `docusign` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:docusign, "~> 0.2.0"}
  ]
end
```

The docs can be found at [https://hexdocs.pm/docusign](https://hexdocs.pm/docusign).

## Regenerating stubs 

Grab the latest [swagger codegen jar](https://github.com/swagger-api/swagger-codegen#prerequisites) and:

```
java -jar swagger-codegen-cli.jar generate \
  -i https://raw.githubusercontent.com/docusign/eSign-OpenAPI-Specification/master/esignature.rest.swagger.json \
  -l elixir -o /tmp/elixir_api_client
```

## JWT Authorization Example

See the [Elixir sample](https://github.com/tandemequity/docusign_elixir_sample_app) for an example Elixir SDK implementation that uses the JWT bearer grant to authenticate.
