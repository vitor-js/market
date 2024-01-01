defmodule MoquecaPayment.Repo.Migrations.AddProductTypeTable do
  use Ecto.Migration

  def up do
    create table("product_type") do
      add :type, :string
    end
  end

  def down do
    drop table("product_type")
  end
end
