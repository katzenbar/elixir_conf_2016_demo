defmodule ExConf.ChampionController do
  use ExConf.Web, :controller

  def show(conn, %{"id" => id}) do
    champion = Repo.get(ExConf.Champion, id)
    |> Repo.preload(:skins)
    
    render(conn, "show.html", champion: champion)
  end
end
