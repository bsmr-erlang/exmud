defmodule Exmud.RegistryTest do
  alias Exmud.Cache
  require Logger
  use ExUnit.Case, async: true

  describe "registry tests: " do

    test "lifecycle" do
      assert Cache.get("foo", "system") == {:error, :no_such_key}
      assert Cache.exists?("foo", "system") == false
      assert Cache.put("foo", "system", "bar") == :ok
      assert Cache.put("foo", "systemsystem", "bar") == :ok
      assert Cache.exists?("foo", "system") == true
      assert Cache.get("foo", "system") == {:ok, "bar"}
      assert Cache.delete("foo", "system") == :ok
      assert Cache.exists?("foo", "system") == false
      assert Cache.exists?("foo", "systemsystem") == true
    end
  end
end