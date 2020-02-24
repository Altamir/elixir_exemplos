defmodule Chat.Chats.Menssage do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :body, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(menssage, attrs) do
    menssage
    |> cast(attrs, [:name, :body])
    |> validate_required([:name, :body])
  end
end
