defmodule ExConf.Acceptance.ChampionsShowTest do
  use ExConf.AcceptanceCase

  alias ExConf.{ChampionShowPage, IndexPage}

  test "navigating to a champion shows their details" do
    champion = insert(:champion)

    IndexPage.visit
    IndexPage.view_champion(champion)

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
