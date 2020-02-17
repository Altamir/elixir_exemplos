defmodule ConvertB2dWeb.Router do
  use ConvertB2dWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ConvertB2dWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
