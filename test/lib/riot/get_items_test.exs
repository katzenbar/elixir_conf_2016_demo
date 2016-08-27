defmodule ExConf.Lib.Riot.GetItemsTest do
  use ExUnit.Case

  test "get_items: retrieves the item list" do
    items = Riot.get_items

    assert items

    shiv = items |> Enum.at(0)

    assert shiv
    assert shiv.id == 3087
    assert shiv.name == "Statikk Shiv"
    assert shiv.gold.purchasable == true
    assert shiv.gold.base == 550
    assert shiv.gold.total == 2600
    assert shiv.gold.sell == 1820
  end
end
