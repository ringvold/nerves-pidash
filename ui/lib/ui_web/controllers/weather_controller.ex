defmodule UiWeb.WeatherController do
  use UiWeb, :controller

  def index(conn, _params) do
    render conn, "index.json", forecast: %{}
  end
end
