defmodule ExConf.Workers.ImportMasteriesWorkerTest do
  use ExConf.ModelCase

  describe "run" do
    test "imports masteries from the api" do
      ExConf.ImportMasteriesWorker.run

      masteries = Repo.all(ExConf.Mastery)

      assert masteries

      recovery = masteries |> Enum.at(0)

      assert recovery
      assert recovery.id == 6211
      assert recovery.name == "Recovery"
      assert recovery.ranks == 5
      assert recovery.sanitized_description |> Enum.at(0) == "+0.4 Health per 5 seconds"
    end
  end
end
