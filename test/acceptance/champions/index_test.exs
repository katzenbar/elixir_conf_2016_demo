defmodule ExConf.Acceptance.ChampionsIndexTest do
  use ExConf.AcceptanceCase

  alias ExConf.ChampionIndexPage

  test "Viewing the champion list" do
    champions = insert_list(5, :champion)

    ChampionIndexPage.visit

    assert ChampionIndexPage.has_champion?(champions |> Enum.at(0))
    assert ChampionIndexPage.has_champion?(champions |> Enum.at(1))
    assert ChampionIndexPage.has_champion?(champions |> Enum.at(2))
  end
end
