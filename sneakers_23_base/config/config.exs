use Mix.Config

config :sneakers_23,
  namespace: Sneakers23,
  ecto_repos: [Sneakers23.Repo]

# Configures the endpoint
config :sneakers_23, Sneakers23Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/pQ3LrKcYNFtUJQ5XQBobICQGWUFohT3O6yuz+76ZuzA2khRwvIBpFJx6BTeFTZ/",
  render_errors: [view: Sneakers23Web.ErrorView, accepts: ~w(html json)],
  pubsub_server: Sneakers23.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
