defmodule ExConf.Champion do
  use ExConf.Web, :model

  schema "champions" do
    field :name, :string
    field :title, :string
    field :blurb, :string
    field :key, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :title, :blurb, :key])
    |> validate_required([:name, :title, :blurb, :key])
  end
end
