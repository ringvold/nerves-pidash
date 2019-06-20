# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :ui, UiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zk2Y+V8N4P7LuwqRUMt51groN6M0J0KlP0omoyXlDh0vfJljxt8Mb03+q9soe0dJ",
  render_errors: [view: UiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ui.PubSub, adapter: Phoenix.PubSub.PG2]

config :ui, :stops,
  [
    %{name: "Storo sør", id: "NSR:StopPlace:58195", quay: "NSR:Quay:11128"},
    %{name: "Grefsenveien nord", id: "NSR:StopPlace:58196", quay: "NSR:Quay:11770"},
    %{name: "Grefsenveien sør", id: "NSR:StopPlace:58196", quay: "NSR:Quay:11769"}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
