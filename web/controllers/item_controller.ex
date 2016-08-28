defmodule ExConf.ItemController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    items = Repo.all(ExConf.Item)

    render(conn, "index.html", items: items)
  end
end
