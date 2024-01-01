defmodule MoquecaPayment.Repo.Migrations.AddAddressTable do
  use Ecto.Migration

  def up do
    create table("address") do
      add :cep, :string
      add :street, :string
      add :complement, :string
      add :neighborhood, :string
      add :number, :string
      add :city, :string
      add :uf, :string
      add :address_type_id, references("address_type")
    end
  end

  def down do
    drop table("address")
  end
end
