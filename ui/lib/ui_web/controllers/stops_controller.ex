defmodule UiWeb.StopsController do
  use UiWeb, :controller

  plug :action

  def index(conn, _params) do
    render conn
  end
end
