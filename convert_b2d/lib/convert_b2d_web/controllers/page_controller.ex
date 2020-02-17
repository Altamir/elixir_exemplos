defmodule ConvertB2dWeb.PageController do
  use ConvertB2dWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
