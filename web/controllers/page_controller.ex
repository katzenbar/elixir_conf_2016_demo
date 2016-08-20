defmodule ExConf.PageController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
