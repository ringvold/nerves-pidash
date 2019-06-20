defmodule UiWeb.StopsView do
  use UiWeb, :view

  def render("index.json", _) do
      Application.fetch_env!(:pidash, :stops)
  end
end
