defmodule Chirp.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :likes_count, :string
    field :reposts_count, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:username, :body])
    |> validate_required([:username, :body])
    |> validate_length(:body, min: 2, max: 255)
  end
end
