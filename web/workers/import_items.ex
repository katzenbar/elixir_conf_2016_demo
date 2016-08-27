defmodule ExConf.ImportItemsWorker do
  alias ExConf.{Item, Repo}

  def run do
    items = Riot.get_items

    Enum.each(items, fn(item_params) ->
      item_params = item_params |> transform_params
      existing_record = Repo.get(Item, item_params.id)

      changeset = if existing_record do
        Item.changeset(existing_record, item_params)
      else
        Item.changeset(%Item{}, item_params)
      end

      Repo.insert_or_update!(changeset)
    end)
  end

  defp transform_params(params) do
    %{
      id: Map.get(params, :id),
      name: Map.get(params, :name, ""),
      description: Map.get(params, :description, ""),
      sanitized_description: Map.get(params, :sanitizedDescription, ""),
      plaintext: Map.get(params, :plaintext, ""),
      purchasable: Map.get(params.gold, :purchasable, false),
      total_cost: Map.get(params.gold, :total, 0),
      base_cost: Map.get(params.gold, :base, 0),
      sell_cost: Map.get(params.gold, :sell, 0),
    }
  end
end
