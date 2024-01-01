defmodule MoquecaPayment.Repo.Migrations.AddAddressTypeTable do
  use Ecto.Migration

  def up do
    create table("address_type") do
      add :type, :string
    end
  end

  def down do
    drop table("address_type")
  end
end
