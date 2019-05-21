defmodule Eden.Mixfile do
  use Mix.Project

  def project do
    [app: :eden,
     version: "3.0.0",
     elixir: "~> 1.5",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:timex]]
  end

  defp deps do
    [{:timex, "~> 3.1"},
     {:exreloader, github: "jfacorro/exreloader", tag: "master", only: :dev},
     {:ex_doc, "~> 0.7", only: :dev},
     {:earmark, ">= 0.0.0", only: :dev}]
  end

  defp description do
    """
    edn (extensible data notation) encoder/decoder implemented in Elixir.
    """
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     contributors: ["Juan Facorro"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/2DA-Analytics/Eden/",
              "edn format" => "https://github.com/edn-format/edn"}]
  end
end
