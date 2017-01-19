use Mix.Config

config :demo, Demo.Endpoint,
  http: [port: "${PORT}"],
  url: [host: "demo.nanoapp.io", port: 80]

# Do not print debug messages in production
config :logger, level: :info

config :demo, Demo.Endpoint,
  secret_key_base: "${SECRET}"

# Configure your database
config :demo, Demo.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "${DATA_DB_HOST}",
  username: "${DATA_DB_USER}",
  password: "${DATA_DB_PASS}",
  database: "demo",
  pool_size: 10
