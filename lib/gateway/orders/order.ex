defmodule Gateway.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "orders" do
    field :external_code, :string
    field :store_id, :integer
    field :sub_total, :float

    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:external_code, :store_id, :sub_total])
    |> validate_required([:external_code, :store_id, :sub_total])
  end
end
