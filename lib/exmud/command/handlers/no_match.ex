defmodule Exmud.Command.Handler.NoMatch do
  @moduledoc """
  This instance of a command callback module handles the special case when no commands match the supplied input.
  """

  alias Exmud.CommandTemplate
  require Logger
  @behaviour Exmud.Command
  @behaviour Exmud.Command.Handler

  @doc false
  def handle(command) do
    Logger.debug("Handler running command: #{inspect(command)}")
    {:ok, nil}
  end

  @doc false
  def initialize(command_template) do
    command_template
    |> CommandTemplate.set_key("CMD_NO_MATCH")
    |> CommandTemplate.set_auto_help(false)
  end
end