defmodule RentCarsWeb.PageControllerTest do
  use RentCarsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Testing Gigalixir CI/CD"
  end
end
