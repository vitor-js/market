defmodule MoquecaPayment.Repo.Migrations.AddProductTable do
  use Ecto.Migration

  def up do
    create table("product") do
      add :name, :string
      add :description, :string
      add :valor, :integer
      add :product_type_id, references("product_type")
    end
  end

  def down do
    drop table("product")
  end
end
