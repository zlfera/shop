defmodule Webhook.Router do
  use Webhook, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Webhook do
    pipe_through :api
  end
end
