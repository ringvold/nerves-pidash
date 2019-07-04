defmodule UiWeb.WeatherController do
  use UiWeb, :controller
  alias Ui.WeatherClient

  def index(conn, _params) do
    render(conn, "index.json", forecast: WeatherClient.get_weather_forecast())
  end
end
