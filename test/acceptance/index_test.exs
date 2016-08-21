defmodule ExConf.Acceptance.IndexTest do
  use ExConf.AcceptanceCase

  alias ExConf.IndexPage

  test "Viewing the champion list" do
    champions = insert_list(5, :champion)

    IndexPage.visit

    assert IndexPage.has_champion?(champions |> Enum.at(0))
    assert IndexPage.has_champion?(champions |> Enum.at(1))
    assert IndexPage.has_champion?(champions |> Enum.at(2))
  end
end
