# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :moqueca_payment,
  ecto_repos: [MoquecaPayment.Repo]

# Configures the endpoint
config :moqueca_payment, MoquecaPaymentWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: MoquecaPaymentWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MoquecaPayment.PubSub,
  live_view: [signing_salt: "ikT8z9nG"]

config :moqueca_payment, env: Mix.env()

name = "postgres"
pass = "1234"
host = "database"
database = "moquecadb"

config :moqueca_payment, ecto_repos: [MoquecaPayment.Repo]

# Configure your database
config :moqueca_payment, MoquecaPayment.Repo,
  username: name,
  password: pass,
  hostname: host,
  database: database

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.29",
  default: [
    args: ~w( --bundle --target=es2017 ),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
