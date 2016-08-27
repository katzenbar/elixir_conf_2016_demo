defmodule ExConf.Workers.ImportVersionsWorkerTest do
  use ExConf.ModelCase

  describe "run" do
    test "imports versions from the api" do
      ExConf.ImportVersionsWorker.run

      versions = Repo.all(ExConf.Version)

      assert versions

      assert (versions |> Enum.at(0)).id == "6.17.1"
      assert (versions |> Enum.at(1)).id == "6.16.2"
      assert (versions |> Enum.at(2)).id == "6.16.1"
    end
  end
end
