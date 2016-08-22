defmodule ExConf.Repo.Migrations.CreateSkin do
  use Ecto.Migration

  def change do
    create table(:skins) do
      add :num, :integer
      add :name, :string
      add :champion_id, references(:champions, on_delete: :nothing)

      timestamps()
    end
    create index(:skins, [:champion_id])

  end
end
