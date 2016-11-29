defmodule Exmud.Mixfile do
  use Mix.Project

  def project do
    [app: :exmud,
     version: "0.0.1",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     description: description(),
     package: package()]
  end

  def application do
    [mod: {Exmud, []},
     applications: [:logger, :calendar, :gproc, :postgrex, :ecto],
     env: []]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [{:apex, "~> 0.5.2"},
     {:calendar, "~> 0.16.0"},
     {:ecto, "~> 2.0.0"},
     {:execs, "~> 0.4.0"},
     {:ex_doc, ">= 0.14.3", only: :dev},
     {:fsm, "~> 0.2.0"},
     {:gproc, "~> 0.6.1"},
     {:inch_ex, ">= 0.0.0", only: :docs},
     {:pipe, "~> 0.0.2"},
     {:postgrex, "~> 0.12.0"},
     {:timex, "~> 3.0"},
     {:uuid, "~> 1.1"}]
  end

  defp description do
    """
    A toolkit for building and an engine for running text-based MU* games implemented in Elixir.
    """
  end

  defp package do
    [
     name: :exmud,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Chris Hicks"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mononym/exmud"}]
  end
end
