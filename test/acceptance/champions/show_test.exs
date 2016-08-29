defmodule ExConf.Acceptance.ChampionsShowTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.{ChampionShowPage, ChampionIndexPage}

  test "navigating to a champion shows their details" do
    champion = insert(:champion)

    ChampionIndexPage.visit
    ChampionIndexPage.view_champion(champion)

    assert ChampionShowPage.current_page?(champion)
    assert ChampionShowPage.has_champion_name?(champion)
  end

  test "viewing skins for a champion" do
    champion = insert(:champion)
    skin = insert(:skin, champion: champion)

    ChampionShowPage.visit(champion)

    assert ChampionShowPage.has_skin?(skin)
  end
end
