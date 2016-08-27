defmodule ExConf.ItemTest do
  use ExConf.ModelCase

  alias ExConf.Item

  @valid_attrs %{base_cost: 42, description: "some content", name: "some content", plaintext: "some content", purchasable: true, sanitized_description: "some content", sell_cost: 42, total_cost: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
