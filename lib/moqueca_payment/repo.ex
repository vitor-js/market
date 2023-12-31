defmodule MoquecaPayment.Repo do
  use Ecto.Repo,
    otp_app: :moqueca_payment,
    adapter: Ecto.Adapters.Postgres
end
