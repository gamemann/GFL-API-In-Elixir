defmodule Gflapielixir.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :steamid, :string
      add :group, :integer

      timestamps()
    end

  end
end
