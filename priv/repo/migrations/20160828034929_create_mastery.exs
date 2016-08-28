defmodule ExConf.Repo.Migrations.CreateMastery do
  use Ecto.Migration

  def change do
    create table(:masteries) do
      add :name, :string
      add :ranks, :integer
      add :sanitized_description, {:array, :text}
      add :description, {:array, :text}
      add :mastery_tree, :string

      timestamps()
    end

  end
end
