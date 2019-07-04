defmodule UiWeb.PageControllerTest do
  use UiWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "js/app.js"
    assert html_response(conn, 200) =~ "<div id=\"main\"></div>"
  end
end
