defmodule ExConf.Lib.Riot.GetChampionsTest do
  use ExUnit.Case

  test "get_champions: retrieves the champion list" do
    champions = Riot.get_champions

    assert champions

    annie = champions |> Enum.at(0)
    assert annie
    assert annie.name == "Annie"
    assert annie.blurb

    sivir = champions |> Enum.at(1)
    assert sivir
    assert sivir.name == "Sivir"
  end
end
