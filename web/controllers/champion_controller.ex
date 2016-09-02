defmodule ExConf.ChampionController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    champions = ExConf.Champion
    |> Ecto.Query.order_by(:name)
    |> Repo.all

    render(conn, "index.html", champions: champions)
  end

  def show(conn, %{"id" => id}) do
    champion = Repo.get(ExConf.Champion, id)
    |> Repo.preload(:skins)

    render(conn, "show.html", champion: champion)
  end
end
