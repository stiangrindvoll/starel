defmodule StarEl.Repo do
  use Ecto.Repo,
    otp_app: :starel,
    adapter: Ecto.Adapters.Postgres
end
