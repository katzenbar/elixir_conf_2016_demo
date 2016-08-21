defmodule ExConf.Workers.ImportChampionsWorkerTest do
  use ExConf.ModelCase

  describe "run" do
    test "imports champions from the api" do
      ExConf.ImportChampionsWorker.run

      champions = Repo.all(ExConf.Champion)

      assert champions

      annie = champions |> Enum.at(0)
      assert annie
      assert annie.name == "Annie"
      assert annie.blurb

      sivir = champions |> Enum.at(1)
      assert sivir
      assert sivir.name == "Sivir"
    end
  end
end
