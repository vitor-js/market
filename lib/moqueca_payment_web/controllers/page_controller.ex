defmodule MoquecaPaymentWeb.PageController do
  use MoquecaPaymentWeb, :controller

  def get(conn, _params) do
    json(conn, %{hellow: "world"})
  end
end
