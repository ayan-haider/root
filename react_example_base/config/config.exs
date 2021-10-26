# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :react_example, ReactExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fPuLREMWyX4H+lvTUKJiSBN1+xgoNrNt8LlKOC7LD0w/31yvEk2fGJQNNsSC2jKG",
  render_errors: [view: ReactExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: ReactExample.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
