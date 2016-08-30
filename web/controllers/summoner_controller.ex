defmodule ExConf.SummonerController do
  use ExConf.Web, :controller

  def index(conn, %{"summoner" => %{"name" => name}}) do
    summoner = Repo.get_by!(ExConf.Summoner, name: name)
    render(conn, "index.html", summoner: summoner)
  end
end
