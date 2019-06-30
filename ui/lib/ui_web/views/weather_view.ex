defmodule UiWeb.WeatherView do
  use UiWeb, :view

  def render("index.json", %{forecast: forecast}) do
    forecast
  end
end
