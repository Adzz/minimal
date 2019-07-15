defmodule Minimal.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  def releases() do
    [
      minimal: [
        include_executables_for: [:unix],
        version: "minimal_1",
        applications: [
          minimal: :permanent,
          runtime_tools: :permanent
        ]
      ]
    ]
  end

  def application, do: [extra_applications: [:logger]]
  defp deps, do: []
end
