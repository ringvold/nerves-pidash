defmodule Firmware.MixProject do
  use Mix.Project

  @app :pidash_fw
  @version "1.0.0"
  @all_targets [:rpi3]

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.9",
      archives: [nerves_bootstrap: "~> 1.7"],
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      aliases: [loadconfig: [&bootstrap/1]],
      deps: deps(),
      releases: [{@app, release()}]
    ]
  end

  # Starting nerves_bootstrap adds the required aliases to Mix.Project.config()
  # Aliases are only added if MIX_TARGET is set.
  def bootstrap(args) do
    Application.start(:nerves_bootstrap)
    Mix.Task.run("loadconfig", args)
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [mod: {Firmware.Application, []}, extra_applications: [:logger]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Dependencies for all targets
      {:nerves, "~> 1.7.15 or ~> 1.8", runtime: false},
      {:shoehorn, "~> 0.9"},
      {:ring_logger, "~> 0.8.6"},
      {:toolshed, "~> 0.2.26"},
      {:webengine_kiosk, "~> 0.1"},
      {:ui, path: "../ui"},

      # Dependencies for all targets except host
      {:nerves_runtime, "~> 0.13.0", targets: @all_targets},
      {:nerves_pack, "~> 0.7.0", targets: @all_targets},

      # Dependencies for specific targets
      {:nerves_system_rpi3_kiosk, path: "../../nerves_system_rpi3_kiosk", runtime: false, nerves: [compile: true], targets: :rpi3}
    ]
  end

  def release do
    [
      overwrite: true,
      cookie: "#{@app}_cookie",
      include_erts: &Nerves.Release.erts/0,
      steps: [&Nerves.Release.init/1, :assemble],
      strip_beams: Mix.env() == :prod
    ]
  end
end
