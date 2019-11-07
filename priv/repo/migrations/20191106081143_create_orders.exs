defmodule Gateway.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :external_code, :string
      add :store_id, :integer
      add :sub_total, :float

      timestamps()
    end

  end
end
