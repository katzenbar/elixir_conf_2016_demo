defmodule ExConf.Version do
  use ExConf.Web, :model

  @primary_key {:id, :string, []}

  schema "versions" do
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id])
    |> validate_required([:id])
  end
end
