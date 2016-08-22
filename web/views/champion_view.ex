defmodule ExConf.ChampionView do
  use ExConf.Web, :view

  def skin_url(champion, skin) do
    "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/#{champion.key}_#{skin.num}.jpg"
  end
end
