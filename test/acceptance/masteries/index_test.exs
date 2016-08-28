defmodule ExConf.Acceptance.MasteriesIndexTest do
  use ExConf.AcceptanceCase

  alias ExConf.MasteryIndexPage

  test "Viewing the mastery list" do
    masteries = insert_list(3, :mastery)

    MasteryIndexPage.visit

    assert MasteryIndexPage.has_mastery?(masteries |> Enum.at(0))
    assert MasteryIndexPage.has_mastery?(masteries |> Enum.at(1))
    assert MasteryIndexPage.has_mastery?(masteries |> Enum.at(2))
  end
end
