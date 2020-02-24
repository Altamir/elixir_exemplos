defmodule ChatWeb.HelloWordChannel do
  use ChatWeb, :channel

  alias Chat.Chats

  def join("hello_word:lobby", _payload, socket) do
    {:ok, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (hello_word:lobby).
  def handle_in("shout", payload, socket) do
    Chats.create_menssage payload
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end
end
