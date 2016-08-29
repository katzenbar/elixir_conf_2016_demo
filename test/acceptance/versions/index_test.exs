defmodule ExConf.Acceptance.VersionsIndexTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.VersionIndexPage

  test "Viewing the champion list" do
    versions = insert_list(3, :versions)

    VersionIndexPage.visit

    assert VersionIndexPage.has_version?(versions |> Enum.at(0))
    assert VersionIndexPage.has_version?(versions |> Enum.at(1))
    assert VersionIndexPage.has_version?(versions |> Enum.at(2))
  end
end
