defmodule Chirp.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :username, :string
      add :body, :string
      add :likes_count, :string
      add :reposts_count, :string

      timestamps()
    end

  end
end
