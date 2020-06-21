defmodule Gflapielixir.Plugs.Authenticate do
  import Plug.Conn

  def init(default), do: default

  def call(conn, _def) do
    key = conn |> get_req_header("authorization")
    token = Application.get_env(:gflapielixir, GflapielixirWeb.Endpoint)[:token]

    if to_string(key) != token do
      conn
      |> send_resp(401, "")
      |> halt()
    end

    conn
  end
end
