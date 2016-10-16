# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :super_friends_club,
  ecto_repos: [SuperFriendsClub.Repo]

# Configures the endpoint
config :super_friends_club, SuperFriendsClub.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Vh3rb533zDmOwkM00P6jDy3BqVjib655a3ZYD+HvF5Kl9IBTXQFSTueF/1OkL8K2",
  render_errors: [view: SuperFriendsClub.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SuperFriendsClub.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
