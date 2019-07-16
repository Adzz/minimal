# Minimal

A minimal repo to re-create an issue we were finding with upgrading to elixir 1.9.0, erlang 22.0.5 and using mix releases. The issue is here: [https://github.com/elixir-lang/elixir/issues/9225](https://github.com/elixir-lang/elixir/issues/9225)

To recreate follow these steps:

```sh
mix release minimal && _build/dev/rel/minimal/bin/minimal start_iex
```

Then in the iex shell run:

```elixir
Minimal.string_from_config()
```

You will see an invalid, non printable string. Now contrast that to the result from doing this:

```sh
iex -S mix
```

Then:

```elixir
Minimal.string_from_config()
```

which will be a valid utf8 string.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `minimal` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:minimal, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/minimal](https://hexdocs.pm/minimal).
