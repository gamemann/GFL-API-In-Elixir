defmodule GflapielixirWeb.PageController do
  use GflapielixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
