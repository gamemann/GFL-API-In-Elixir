defmodule GflapielixirWeb.PerkController do
  use GflapielixirWeb, :controller

  #import Ecto.Query

  def showgroup(conn, %{"steamid" => steamid} = _params) do
    json(conn, %{test: "haha"})
  end
end
