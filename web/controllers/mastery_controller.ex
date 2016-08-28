defmodule ExConf.MasteryController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    masteries = Repo.all(ExConf.Mastery)
    render(conn, "index.html", masteries: masteries)
  end

  def show(conn, %{"id" => id}) do
    mastery = Repo.get(ExConf.Mastery, id)
    render(conn, "show.html", mastery: mastery)
  end
end
