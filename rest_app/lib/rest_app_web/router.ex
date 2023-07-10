defmodule RestAppWeb.Router do
  use RestAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RestAppWeb do
    pipe_through :api
    get "/", DefaultController, :index
    post "/accounts/create", AccountController, :create
    get "/accounts/index", AccountController, :index
    get "/accounts/show", AccountController, :show
    delete "/accounts/delete", AccountController, :delete
    get "/accounts/getbyemail", AccountController, :find_account_by_email
  end
end
