defmodule ExConf.ImportVersionsWorker do
  alias ExConf.{Version, Repo}

  def run do
    versions = Riot.get_versions

    Enum.each(versions, fn(version_id) ->
      existing_record = Repo.get(Version, version_id)

      changeset = if existing_record do
        Version.changeset(existing_record, %{id: version_id})
      else
        Version.changeset(%Version{}, %{id: version_id})
      end

      Repo.insert_or_update!(changeset)
    end)
  end
end
