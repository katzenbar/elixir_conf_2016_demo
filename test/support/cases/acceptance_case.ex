defmodule ExConf.AcceptanceCase do
  @moduledoc """
  This module defines the test case to be used when writing tests that interact with
  the browser.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      @moduletag :feature

      use Phoenix.ConnTest

      alias ExConf.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import ExConf.Router.Helpers

      @endpoint ExConf.Endpoint

      use Hound.Helpers
      hound_session

      import ExConf.FactoryHelpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ExConf.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(ExConf.Repo, {:shared, self()})
    end

    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
