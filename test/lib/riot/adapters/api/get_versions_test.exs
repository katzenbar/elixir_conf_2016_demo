defmodule ExConf.Lib.Riot.Adapters.Api.GetVersionsTest do
  use ExUnit.Case
  @moduletag :integration

  test "get_versions: retrieves all versions" do
    versions = Riot.ApiAdapter.get_versions

    assert versions

    assert versions |> Enum.at(0) == "6.17.1"
    assert versions |> Enum.at(1) == "6.16.2"
    assert versions |> Enum.at(2) == "6.16.1"
  end
end
