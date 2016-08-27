defmodule ExConf.Lib.Riot.Adapters.Api.GetItemsTest do
  use ExUnit.Case
  @moduletag :integration

  test "get_items: retrieves all details about the items" do
    items = Riot.ApiAdapter.get_items

    assert items

    shiv = Enum.find(items, fn(item) -> item.name == "Statikk Shiv" end)

    assert shiv
    assert shiv.id == 3087
    assert shiv.gold.purchasable == true
    assert shiv.gold.base == 550
    assert shiv.gold.total == 2600
    assert shiv.gold.sell == 1820
  end
end
