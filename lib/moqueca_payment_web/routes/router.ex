defmodule MoquecaPaymentWeb.Routes.Router do
  use MoquecaPaymentWeb, :router

  forward("/products", MoquecaPaymentWeb.Routes.Product.ProductsRoutes)

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      live_dashboard("/dashboard", metrics: MoquecaPaymentWeb.Telemetry)
    end
  end
end
