# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :starel,
  namespace: StarEl,
  ecto_repos: [StarEl.Repo]

# Configures the endpoint
config :starel, StarElWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4+s6TFTaTYfy24uhiLnp325y1wyilEVH5xXIrKIwumrjEro+frL5fa9AsgWhLV5Q",
  render_errors: [view: StarElWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: StarEl.PubSub,
  live_view: [signing_salt: "6JBgKdn0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
