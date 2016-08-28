defmodule ExConf.MasteryController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    masteries = Repo.all(ExConf.Mastery)
    render(conn, "index.html", masteries: masteries)
  end
end
