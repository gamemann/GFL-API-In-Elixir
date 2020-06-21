defmodule Gflapielixir.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :group, :integer
    field :steamid, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:steamid, :group])
    |> validate_required([:steamid, :group])
  end
end
