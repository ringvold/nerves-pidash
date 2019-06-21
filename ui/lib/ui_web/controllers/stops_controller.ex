defmodule UiWeb.StopsController do
  use UiWeb, :controller

  def index(conn, _params) do
  	stops = Application.fetch_env!(:ui, :stops)
    render conn, "index.json", stops: stops 
  end
end
