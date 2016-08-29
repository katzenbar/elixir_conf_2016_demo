defmodule ExConf.Acceptance.ItemsShowTest do
  use ExConf.AcceptanceCase, async: true

  alias ExConf.{ItemShowPage, ItemIndexPage}

  test "navigating to an item shows its details" do
    item = insert(:item)

    ItemIndexPage.visit
    ItemIndexPage.view_item(item)

    assert ItemShowPage.current_page?(item)
    assert ItemShowPage.has_item_name?(item)
  end
end
