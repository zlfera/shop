# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

config :webhook,
  generators: [context_app: false]

# Configures the endpoint
config :webhook, Webhook.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZQaw05b86SYELmFyTeQZFhCF2F16gVw+fV0vVNIDHCwvfwyZRJk4bFnFQyeI9DN0",
  render_errors: [view: Webhook.ErrorView, accepts: ~w(json)],
  pubsub: [name: Webhook.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "d9Z/9oU4"]

config :api,
  generators: [context_app: false]

# Configures the endpoint
config :api, Api.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BTjwugtMjBwCH+ESdKt/Rj5N/z2TP5xc7SuKUFq30365HeQ25yOhRiGZPDwaJFDg",
  render_errors: [view: Api.ErrorView, accepts: ~w(json)],
  pubsub: [name: Api.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Nbj4oV+J"]

config :admin,
  generators: [context_app: false]

# Configures the endpoint
config :admin, Admin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V9KFHoGL2dIrEwXtTLAXZVfoHfbePhTb1Nr1GeSoZWL5n7KkoV9Qg/dXcW9w2a8N",
  render_errors: [view: Admin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Admin.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Tmjkw+Hx"]

# Configure Mix tasks and generators
config :database,
  ecto_repos: [Database.Repo]

# generators: [context_app: :shop]

# Configures the endpoint
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
