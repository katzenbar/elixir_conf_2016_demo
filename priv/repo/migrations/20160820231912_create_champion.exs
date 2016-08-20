defmodule ExConf.Repo.Migrations.CreateChampion do
  use Ecto.Migration

  def change do
    create table(:champions) do
      add :name, :string
      add :title, :string
      add :blurb, :text
      add :key, :string

      timestamps()
    end

  end
end
