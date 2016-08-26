defmodule ExConf.VersionController do
  use ExConf.Web, :controller

  def index(conn, _params) do
    versions = Repo.all(ExConf.Version)

    render(conn, "index.html", versions: versions)
  end
end
