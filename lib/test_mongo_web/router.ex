defmodule TestMongoWeb.Router do
  use TestMongoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TestMongoWeb do
    pipe_through :api
  end
end
