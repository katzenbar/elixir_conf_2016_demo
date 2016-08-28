defmodule ExConf.ImportMasteriesWorker do
  alias ExConf.{Mastery, Repo}

  def run do
    masteries = Riot.get_masteries

    Enum.each(masteries, fn(mastery_params) ->
      mastery_params = mastery_params |> transform_params
      existing_record = Repo.get(Mastery, mastery_params.id)

      changeset = if existing_record do
        Mastery.changeset(existing_record, mastery_params)
      else
        Mastery.changeset(%Mastery{}, mastery_params)
      end

      Repo.insert_or_update!(changeset)
    end)
  end

  defp transform_params(params) do
    %{
      id: Map.get(params, :id),
      name: Map.get(params, :name, ""),
      ranks: Map.get(params, :ranks, 1),
      mastery_tree: Map.get(params, :masteryTree, ""),
      description: Map.get(params, :description, []),
      sanitized_description: Map.get(params, :sanitizedDescription, []),
    }
  end
end
