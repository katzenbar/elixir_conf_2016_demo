defmodule ExConf.Lib.Riot.GetVersionsTest do
  use ExUnit.Case

  test "get_versions: retrieves the version list" do
    versions = Riot.get_versions

    assert versions

    assert versions |> Enum.at(0) == "6.17.1"
    assert versions |> Enum.at(1) == "6.16.2"
    assert versions |> Enum.at(2) == "6.16.1"
  end
end
