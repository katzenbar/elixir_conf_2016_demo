defmodule ExConf.Acceptance.ItemsIndexTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.ItemIndexPage

  test "Viewing the items list" do
    items = insert_list(3, :item)

    ItemIndexPage.visit

    assert ItemIndexPage.has_item?(items |> Enum.at(0))
    assert ItemIndexPage.has_item?(items |> Enum.at(1))
    assert ItemIndexPage.has_item?(items |> Enum.at(2))
  end
end
