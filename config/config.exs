# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_conf_2016_demo,
  namespace: ExConf,
  ecto_repos: [ExConf.Repo]

# Configures the endpoint
config :elixir_conf_2016_demo, ExConf.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FOaeRmCb7cQSEvWzccwYvtcGKs2/2X8Bsn1xc+SvjoTBjP4gvIYurqsn965n3ssA",
  render_errors: [view: ExConf.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExConf.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elixir_conf_2016_demo, Riot,
  adapter: Riot.ApiAdapter

config :quantum, cron: [
  "@daily": {ExConf.ImportChampionsWorker, :run}
]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

import_config "riot.secret.exs"
