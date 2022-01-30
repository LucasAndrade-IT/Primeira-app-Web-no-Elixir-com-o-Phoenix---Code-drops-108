# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :muse, MuseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5O0b1+8t2V8LuI4w7sHm1V5b+9NVw6XRogtEqo+M8b0rQgs3D8Jv2yirUm03pTlQ",
  render_errors: [view: MuseWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Muse.PubSub,
  live_view: [signing_salt: "7Eq3YVve"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
