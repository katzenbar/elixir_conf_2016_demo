defmodule ExConf.Workers.ImportChampionsWorkerTest do
  use ExConf.ModelCase

  describe "run" do
    test "imports champions from the api" do
      ExConf.ImportChampionsWorker.run

      champions = Repo.all(ExConf.Champion)
      |> Repo.preload(:skins)

      assert champions

      annie = champions |> Enum.at(0)
      assert annie
      assert annie.name == "Annie"
      assert annie.blurb

      skins = annie.skins
      assert skins

      goth_annie = Enum.find(skins, fn(skin) -> skin.name == "Goth Annie" end)
      assert goth_annie
      assert goth_annie.id == 1001
      assert goth_annie.num == 1
    end
  end
end
