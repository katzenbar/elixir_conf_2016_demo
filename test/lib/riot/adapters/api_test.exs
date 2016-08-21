defmodule ExConf.Lib.Riot.Adapters.ApiTest do
  use ExUnit.Case
  @moduletag :integration

  test "get_champions: retrieves the champion list" do
    champions = Riot.ApiAdapter.get_champions(
      data_by_id: true,
      champ_data: "blurb",
    )

    assert champions

    annie = Enum.find(champions, fn(champion) -> champion.name == "Annie" end)
    assert annie
    assert annie.id == 1
  end
end
