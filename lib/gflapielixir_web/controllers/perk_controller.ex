defmodule GflapielixirWeb.PerkController do
  use GflapielixirWeb, :controller
  alias Gflapielixir.Repo

  import Ecto.Query

  @spec showgroup(Plug.Conn.t(), map) :: Plug.Conn.t()
  def showgroup(conn, %{"steamid" => steamid} = _params) do
    query = from u in "users", where: u.steamid == ^steamid, select: u.group

    group = Repo.one(query)

    {group, error} = if group == nil do
      {0, 404}
    else
      {group, -1}
    end

    json(conn, %{steamid: steamid, group: group, error: error})
  end
end
