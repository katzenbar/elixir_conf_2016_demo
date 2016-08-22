defmodule ExConf.Champion do
  use ExConf.Web, :model

  schema "champions" do
    field :name, :string
    field :title, :string
    field :blurb, :string
    field :key, :string

    has_many :skins, ExConf.Skin

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id, :name, :title, :blurb, :key])
    |> validate_required([:id, :name, :title, :blurb, :key])
    |> cast_assoc(:skins, required: true)
  end
end
