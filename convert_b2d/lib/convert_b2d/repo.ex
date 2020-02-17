defmodule ConvertB2d.Repo do
  use Ecto.Repo,
    otp_app: :convert_b2d,
    adapter: Ecto.Adapters.Postgres
end
