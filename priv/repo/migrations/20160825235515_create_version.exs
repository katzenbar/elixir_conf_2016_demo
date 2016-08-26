defmodule ExConf.Repo.Migrations.CreateVersion do
  use Ecto.Migration

  def change do
    create table(:versions, primary_key: false) do
      add :id, :string, size: 10, primary_key: true

      timestamps()
    end
  end
end
