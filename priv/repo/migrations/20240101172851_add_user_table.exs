defmodule MoquecaPayment.Repo.Migrations.AddUserTable do
  use Ecto.Migration

  def up do
    create table("user") do
      add :name, :string
      add :email, :string
      add :password, :string
      add :type, :string
      add :individual_id, references("individual")
      add :address_id, references("address")
    end
  end

  def down do
    drop table("user")
  end
end
