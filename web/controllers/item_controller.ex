defmodule ExConf.ItemController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    items = Repo.all(ExConf.Item)

    render(conn, "index.html", items: items)
  end

  def show(conn, %{"id" => id}) do
    item = Repo.get(ExConf.Item, id)
    render(conn, "show.html", item: item)
  end
end
