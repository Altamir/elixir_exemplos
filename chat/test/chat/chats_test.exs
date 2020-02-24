defmodule Chat.ChatsTest do
  use Chat.DataCase

  alias Chat.Chats

  describe "messages" do
    alias Chat.Chats.Menssage

    @valid_attrs %{body: "some body", name: "some name"}
    @update_attrs %{body: "some updated body", name: "some updated name"}
    @invalid_attrs %{body: nil, name: nil}

    def menssage_fixture(attrs \\ %{}) do
      {:ok, menssage} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Chats.create_menssage()

      menssage
    end

    test "list_messages/0 returns all messages" do
      menssage = menssage_fixture()
      assert Chats.list_messages() == [menssage]
    end

    test "get_menssage!/1 returns the menssage with given id" do
      menssage = menssage_fixture()
      assert Chats.get_menssage!(menssage.id) == menssage
    end

    test "create_menssage/1 with valid data creates a menssage" do
      assert {:ok, %Menssage{} = menssage} = Chats.create_menssage(@valid_attrs)
      assert menssage.body == "some body"
      assert menssage.name == "some name"
    end

    test "create_menssage/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Chats.create_menssage(@invalid_attrs)
    end

    test "update_menssage/2 with valid data updates the menssage" do
      menssage = menssage_fixture()
      assert {:ok, %Menssage{} = menssage} = Chats.update_menssage(menssage, @update_attrs)
      assert menssage.body == "some updated body"
      assert menssage.name == "some updated name"
    end

    test "update_menssage/2 with invalid data returns error changeset" do
      menssage = menssage_fixture()
      assert {:error, %Ecto.Changeset{}} = Chats.update_menssage(menssage, @invalid_attrs)
      assert menssage == Chats.get_menssage!(menssage.id)
    end

    test "delete_menssage/1 deletes the menssage" do
      menssage = menssage_fixture()
      assert {:ok, %Menssage{}} = Chats.delete_menssage(menssage)
      assert_raise Ecto.NoResultsError, fn -> Chats.get_menssage!(menssage.id) end
    end

    test "change_menssage/1 returns a menssage changeset" do
      menssage = menssage_fixture()
      assert %Ecto.Changeset{} = Chats.change_menssage(menssage)
    end
  end
end
