defmodule ExConf.Lib.Riot.GetChampionsTest do
  use ExUnit.Case

  test "get_champions: retrieves the champion list" do
    champions = Riot.get_champions

    assert champions

    annie = champions |> Enum.at(0)

    assert annie
    assert annie.name == "Annie"
    assert annie.blurb
    assert annie.title
    assert annie.key == "Annie"

    assert annie.skins

    goth_annie = annie.skins |> Enum.at(1)

    assert goth_annie
    assert goth_annie.id == 1001
    assert goth_annie.num == 1
    assert goth_annie.name == "Goth Annie"
  end
end
