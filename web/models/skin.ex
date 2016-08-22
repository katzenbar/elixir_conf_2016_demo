defmodule ExConf.Skin do
  use ExConf.Web, :model

  schema "skins" do
    field :num, :integer
    field :name, :string
    belongs_to :champion, ExConf.Champion

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id, :num, :name])
    |> validate_required([:id, :num, :name])
  end
end
