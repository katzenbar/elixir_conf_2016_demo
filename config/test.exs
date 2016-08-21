use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_conf_2016_demo, ExConf.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_conf_2016_demo, ExConf.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixir_conf_2016_demo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
