defmodule ExConf.Lib.Riot.Adapters.ApiTest do
  use ExUnit.Case
  @moduletag :integration

  test "get_champions: retrieves all details about the champion" do
    champions = Riot.ApiAdapter.get_champions(
      data_by_id: true,
      champ_data: "all"
    )

    assert champions

    annie = Enum.find(champions, fn(champion) -> champion.name == "Annie" end)

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

  test "get_champions: retrieves the champion lists with the blurb" do
    champions = Riot.ApiAdapter.get_champions(
      data_by_id: true,
      champ_data: "blurb",
    )

    assert champions

    annie = Enum.find(champions, fn(champion) -> champion.name == "Annie" end)

    assert annie
    assert annie.id == 1
    assert annie.blurb
    assert annie.title
    assert annie.key == "Annie"
  end
end
