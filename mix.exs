Code.ensure_loaded?(Hex) and Hex.start()

defmodule Inflex.Mixfile do
  use Mix.Project

  @source_url "https://github.com/noizu-labs-scaffolding/inflex28"

  def project do
    [
      app: :inflex28,
      version: "2.1.0",
      elixir: ">= 1.0.0",
      deps: deps(),
      package: [
        files: ["lib", "mix.exs", "README*", "LICENSE*"],
        contributors: ["Johnny Winn", "Keith Brings"],
        licenses: ["Apache-2.0"],
        links: %{"GitHub" => @source_url},
        maintainers: ["Keith Brings"]
      ],
      name: "Inflex",
      docs: [
        extras: ["README.md"],
        main: "Inflex",
        source_url: @source_url,
        api_references: false,
        extra_section: []
      ],
      description: """
      An Elixir library for handling word inflections.
      """
    ]
  end

  def application do
    []
  end

  def deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end
end
