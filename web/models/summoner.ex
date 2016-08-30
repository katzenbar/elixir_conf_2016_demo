defmodule ExConf.Summoner do
  use ExConf.Web, :model

  schema "summoners" do
    field :name, :string
    field :summoner_level, :integer
    field :profile_icon_id, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id, :name, :summoner_level, :profile_icon_id])
    |> validate_required([:id, :name, :summoner_level, :profile_icon_id])
  end
end
