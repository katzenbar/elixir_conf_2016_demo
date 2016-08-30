defmodule ExConf.Repo.Migrations.CreateSummoner do
  use Ecto.Migration

  def change do
    create table(:summoners) do
      add :name, :string
      add :summoner_level, :integer
      add :profile_icon_id, :integer

      timestamps()
    end

  end
end
