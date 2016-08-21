defmodule ExConf.Acceptance.ChampionsShowTest do
  use ExConf.AcceptanceCase

  alias ExConf.{ChampionShowPage, IndexPage}

  test "navigating to a champion shows their details" do
    annie = insert(:champion)

    IndexPage.visit
    IndexPage.view_champion(annie)

    assert ChampionShowPage.current_page?(annie)
    assert ChampionShowPage.has_champion_name?(annie)
  end
end
