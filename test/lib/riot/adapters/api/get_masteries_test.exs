defmodule ExConf.Lib.Riot.Adapters.Api.GetMasteriesTest do
  use ExUnit.Case
  @moduletag :integration

  test "get_masteries: retrieves all details about masteries" do
    masteries = Riot.ApiAdapter.get_masteries

    assert masteries

    recovery = Enum.find(masteries, fn(mastery) -> Map.get(mastery, :name) == "Recovery" end)

    assert recovery
    assert recovery.id == 6211
    assert recovery.name == "Recovery"
    assert recovery.ranks == 5
    assert recovery.sanitizedDescription |> Enum.at(0) == "+0.4 Health per 5 seconds"
  end
end
