defmodule ExConf.Acceptance.SummonersIndexTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.{HomePage, SummonerIndexPage}

  test "Searching for a summoner, without page objects" do
    summoner = insert(:summoner, name: "katzenbar")

    navigate_to "/"
    fill_field({:class, "qa-summoner-search-input"}, summoner.name)
    click({:class, "qa-summoner-search-submit"})

    assert current_path == "/summoners"
    assert find_element(:class, "qa-summoner-#{summoner.id}")
  end

  test "Searching for a summoner" do
    summoner = insert(:summoner, name: "katzenbar")

    HomePage.visit
    HomePage.search_for_summoner("katzenbar")

    assert_current_path SummonerIndexPage.path(summoner)
    assert SummonerIndexPage.has_summoner?(summoner)
  end
end
