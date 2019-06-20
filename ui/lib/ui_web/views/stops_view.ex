defmodule UiWeb.StopsView do
  use UiWeb, :view

  def render("index.json", %{stops: stops}) do
    stops
  end
end
