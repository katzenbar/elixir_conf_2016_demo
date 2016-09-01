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

      defmacro assert_current_path(assertion) do
        quote do
          expected_path = unquote(assertion)
          assert(
            current_path == expected_path,
            "Incorrect path, expected \"#{current_path}\" to be \"#{expected_path}\""
          )
        end
      end
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ExConf.Repo)

    if tags[:async] do
      metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(ExConf.Repo, self())
      Hound.start_session(metadata: metadata)
    else
      Hound.start_session
      Ecto.Adapters.SQL.Sandbox.mode(ExConf.Repo, {:shared, self()})
    end

    :ok
  end
end
