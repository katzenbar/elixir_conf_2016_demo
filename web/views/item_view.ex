defmodule ExConf.ItemView do
  use ExConf.Web, :view

  def item_url(item) do
    "http://ddragon.leagueoflegends.com/cdn/6.17.1/img/item/#{item.id}.png"
  end
end
