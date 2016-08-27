defmodule ExConf.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :description, :text
      add :sanitized_description, :text
      add :plaintext, :string
      add :purchasable, :boolean, default: false, null: false
      add :total_cost, :integer
      add :base_cost, :integer
      add :sell_cost, :integer

      timestamps()
    end

  end
end
