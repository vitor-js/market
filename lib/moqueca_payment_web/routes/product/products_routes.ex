defmodule MoquecaPaymentWeb.Routes.Product.ProductsRoutes do
  use MoquecaPaymentWeb, :router

  alias MoquecaPaymentWeb.PageController

  pipeline :api do
    plug :accepts, ["json"]
  end

  get("/", PageController, :get)

  # scope "/", ApiWeb do
  #   pipe_through(:api)

  #   get("/all", PageController, :get)
  # end
end
