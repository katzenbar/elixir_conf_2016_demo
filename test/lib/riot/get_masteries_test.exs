defmodule ExConf.Lib.Riot.GetMasteriesTest do
  use ExUnit.Case

  test "get_masteries: retrieves the list of masteries" do
    masteries = Riot.get_masteries

    assert masteries

    recovery = masteries |> Enum.at(0)

    assert recovery
    assert recovery.id == 6211
    assert recovery.name == "Recovery"
    assert recovery.ranks == 5
  end
end
