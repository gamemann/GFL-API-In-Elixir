# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gflapielixir,
  ecto_repos: [Gflapielixir.Repo]

# Configures the endpoint
config :gflapielixir, GflapielixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WXFW7Z4nOlGcNSJGg+2Q6OqoRg3exnePBvPCW1QhHFfaiiQ4CcUqohocekThKNTH",
  render_errors: [view: GflapielixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Gflapielixir.PubSub,
  live_view: [signing_salt: "89MxSwwc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
