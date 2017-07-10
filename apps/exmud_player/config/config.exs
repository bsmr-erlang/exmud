# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :exmud_player, Exmud.Player.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "exmud_player_#{Mix.env}",
  hostname: "localhost",
  pool_size: 10,
  username: "exmud_player"

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
import_config "#{Mix.env}.exs"
