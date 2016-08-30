defmodule ExConf.SummonerView do
  use ExConf.Web, :view

  def profile_icon_url(summoner) do
    "http://ddragon.leagueoflegends.com/cdn/6.17.1/img/profileicon/#{summoner.profile_icon_id}.png"
  end
end
