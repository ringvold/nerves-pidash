defmodule Ui.WeatherClient do
  alias Ui.YrParser

  def get_weather_forecast do
    url = 'https://www.yr.no/sted/Norge/Oslo/Oslo/Storo/forecast.xml'
    {:ok, {{_scheme, 200, 'OK'}, _headers, body}} = :httpc.request(:get, {url, []}, [], [])
    YrParser.get_forecast(body, 2)
  end
end
