defmodule ExConf.Item do
  use ExConf.Web, :model

  schema "items" do
    field :name, :string
    field :description, :string
    field :sanitized_description, :string
    field :plaintext, :string
    field :purchasable, :boolean, default: false
    field :total_cost, :integer
    field :base_cost, :integer
    field :sell_cost, :integer

    timestamps()
  end

  @fields [:id, :name, :description, :sanitized_description, :plaintext, :purchasable, :total_cost, :base_cost, :sell_cost]
  @required_fields [:id]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @fields)
    |> validate_required(@required_fields)
  end
end
