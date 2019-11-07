defmodule GatewayWeb.OrderView do
  use GatewayWeb, :view
  alias GatewayWeb.OrderView

  def render("index.json", %{orders: orders}) do

    %{data: render_many(orders, OrderView, "order.json")}
  end

  def render("show.json", %{order: order}) do
    %{data: render_one(order, OrderView, "order.json")}
  end

  def render("order.json", %{order: order}) do
    %{id: order.id,
      external_code: order.external_code,
      store_id: order.store_id,
      sub_total: order.sub_total}
  end
end
