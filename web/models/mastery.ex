defmodule ExConf.Mastery do
  use ExConf.Web, :model

  schema "masteries" do
    field :name, :string
    field :ranks, :integer
    field :sanitized_description, {:array, :string}
    field :description, {:array, :string}
    field :mastery_tree, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id, :name, :ranks, :sanitized_description, :description, :mastery_tree])
    |> validate_required([:id, :name, :ranks, :sanitized_description, :description, :mastery_tree])
  end
end
