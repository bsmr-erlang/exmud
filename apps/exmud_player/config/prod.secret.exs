use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.

config :exmud_player, Exmud.Player.Repo,
  database: "exmud_player_prod",
  password: ""