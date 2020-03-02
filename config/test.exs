use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :webhook, Webhook.Endpoint,
  http: [port: 4101],
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, Api.Endpoint,
  http: [port: 4102],
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :admin, Admin.Endpoint,
  http: [port: 4103],
  server: false

# Configure your database
config :database, Database.Repo,
  username: "postgres",
  password: "postgres",
  database: "database_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
# Print only warnings and errors during test
config :logger, level: :warn
