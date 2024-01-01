defmodule MoquecaPayment.Repo.Migrations.AddIndividualTable do
  use Ecto.Migration

  def up do
    create table("individual") do
      add :sex, :string
      add :age, :string
      add :birthday, :string
      add :cpf, :string
      add :rg, :string
    end
  end

  def down do
    drop table("individual")
  end
end
