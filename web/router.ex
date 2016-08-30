defmodule ExConf.Router do
  use ExConf.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExConf do
    pipe_through :browser

    get "/", HomeController, :index

    resources "/champions", ChampionController, only: [:index, :show]
    resources "/items", ItemController, only: [:index, :show]
    resources "/masteries", MasteryController, only: [:index, :show]
    resources "/summoners", SummonerController, only: [:index]
    resources "/versions", VersionController, only: [:index]
  end
end
