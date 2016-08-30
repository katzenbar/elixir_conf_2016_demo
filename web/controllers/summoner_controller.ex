defmodule ExConf.SummonerController do
  use ExConf.Web, :controller

  def index(conn, %{"summoner" => %{"name" => name}}) do
    summoner = ExConf.SummonerService.get_summoner(name)
    if summoner do
      render(conn, "index.html", summoner: summoner)
    else
      render(conn, ExConf.ErrorView, "404.html")
    end
  end
end
