defmodule ExConf.PageController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    champions = Repo.all(ExConf.Champion)

    render(
      conn,
      "index.html",
      champions: champions
    )
  end
end
