defmodule Chat.Chats do
  @moduledoc """
  The Chats context.
  """

  import Ecto.Query, warn: false
  alias Chat.Repo

  alias Chat.Chats.Menssage

  @doc """
  Returns the list of messages.

  ## Examples

      iex> list_messages()
      [%Menssage{}, ...]

  """
  def list_messages do
    Repo.all(Menssage)
  end

  @doc """
  Gets a single menssage.

  Raises `Ecto.NoResultsError` if the Menssage does not exist.

  ## Examples

      iex> get_menssage!(123)
      %Menssage{}

      iex> get_menssage!(456)
      ** (Ecto.NoResultsError)

  """
  def get_menssage!(id), do: Repo.get!(Menssage, id)

  @doc """
  Creates a menssage.

  ## Examples

      iex> create_menssage(%{field: value})
      {:ok, %Menssage{}}

      iex> create_menssage(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_menssage(attrs \\ %{}) do
    %Menssage{}
    |> Menssage.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a menssage.

  ## Examples

      iex> update_menssage(menssage, %{field: new_value})
      {:ok, %Menssage{}}

      iex> update_menssage(menssage, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_menssage(%Menssage{} = menssage, attrs) do
    menssage
    |> Menssage.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a menssage.

  ## Examples

      iex> delete_menssage(menssage)
      {:ok, %Menssage{}}

      iex> delete_menssage(menssage)
      {:error, %Ecto.Changeset{}}

  """
  def delete_menssage(%Menssage{} = menssage) do
    Repo.delete(menssage)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking menssage changes.

  ## Examples

      iex> change_menssage(menssage)
      %Ecto.Changeset{source: %Menssage{}}

  """
  def change_menssage(%Menssage{} = menssage) do
    Menssage.changeset(menssage, %{})
  end
end
