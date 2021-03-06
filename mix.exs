defmodule Tower2slack.Mixfile do
  use Mix.Project

  def project do
    [app: :tower2slack,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [
        :logger, :httpoison, :poison, :edeliver, :cowboy, :plug
      ],
      mod: {Tower2slack, [port: 14326]}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.9.0"},
      {:poison, "~> 2.2.0"},
      {:plug, "~> 1.2.0"},
      {:cowboy, "~> 1.0.0"},
      {:edeliver, "~> 1.3.0"},
      {:credo, "~> 0.4", only: [:dev, :test]}
    ]
  end
end
