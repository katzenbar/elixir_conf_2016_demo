defmodule ExConf.Workers.ImportItemsWorkerTest do
  use ExConf.ModelCase

  describe "run" do
    test "imports items from the api" do
      ExConf.ImportItemsWorker.run

      items = Repo.all(ExConf.Item)

      assert items

      shiv = items |> Enum.at(0)

      assert shiv
      assert shiv.id == 3087
      assert shiv.name == "Statikk Shiv"
      assert shiv.description
      assert shiv.sanitized_description
      assert shiv.plaintext
      assert shiv.purchasable == true
      assert shiv.base_cost == 550
      assert shiv.total_cost == 2600
      assert shiv.sell_cost == 1820
    end
  end
end
