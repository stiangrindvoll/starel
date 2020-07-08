defmodule StarEl.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias StarEl.Repo

  schema "users" do
    field :email, :string
    field :handle, :string
    field :name, :string
    field :uec, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :uec, :handle])
    |> validate_required([:name, :email, :handle])
  end



  def one do
    Repo.one(__MODULE__)
  end
end
