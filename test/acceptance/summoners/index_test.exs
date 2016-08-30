defmodule ExConf.Acceptance.SummonersIndexTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.{HomePage, SummonerIndexPage}

  test "Searching for a summoner" do
    summoner = insert(:summoner, name: "katzenbar")

    HomePage.visit
    HomePage.search_for_summoner("katzenbar")

    assert_current_path SummonerIndexPage.path(summoner)
    assert SummonerIndexPage.has_summoner?(summoner)
  end
end
