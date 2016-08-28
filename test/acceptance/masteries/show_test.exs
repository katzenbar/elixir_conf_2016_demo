defmodule ExConf.Acceptance.MasteriesShowTest do
  use ExConf.AcceptanceCase

  alias ExConf.{MasteryShowPage, MasteryIndexPage}

  test "navigating to a mastery shows their details" do
    mastery = insert(:mastery)

    MasteryIndexPage.visit
    MasteryIndexPage.view_mastery(mastery)

    assert MasteryShowPage.current_page?(mastery)
    assert MasteryShowPage.has_mastery_name?(mastery)
  end
end
