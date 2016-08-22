defmodule ExConf.ImportChampionsWorker do
  alias ExConf.{Champion, Repo}

  def run do
    champions = Riot.get_champions

    Enum.each(champions, fn(champion_params) ->
      existing_record = Repo.get(Champion, champion_params.id)
      |> Repo.preload(:skins)

      changeset = if existing_record do
        Champion.changeset(existing_record, champion_params)
      else
        Champion.changeset(%Champion{}, champion_params)
      end

      Repo.insert_or_update!(changeset)
    end)
  end
end
