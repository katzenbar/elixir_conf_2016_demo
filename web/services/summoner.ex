defmodule ExConf.SummonerService do
  def get_summoner(name) do
    summoner = ExConf.Repo.get_by(ExConf.Summoner, name: name)

    if summoner do
      summoner
    else
      summoner_params = Riot.get_summoner_by_name(name) |> transform_params
      if summoner_params.id do
        changeset = ExConf.Summoner.changeset(%ExConf.Summoner{}, summoner_params)
        ExConf.Repo.insert!(changeset)
      else
        nil
      end
    end
  end

  defp transform_params(params) do
    %{
      id: Map.get(params, :id),
      name: Map.get(params, :name, ""),
      profile_icon_id: Map.get(params, :profileIconId, ""),
      summoner_level: Map.get(params, :summonerLevel, 1),
    }
  end
end
