defmodule Gflapielixir.Repo do
  use Ecto.Repo,
    otp_app: :gflapielixir,
    adapter: Ecto.Adapters.MyXQL
end
