defmodule ExConf.MasteryView do
  use ExConf.Web, :view

  def mastery_image_url(mastery) do
    "http://ddragon.leagueoflegends.com/cdn/6.17.1/img/mastery/#{mastery.id}.png"
  end
end
