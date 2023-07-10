defmodule RestApp.Repo do
  use Ecto.Repo,
    otp_app: :rest_app,
    adapter: Ecto.Adapters.Postgres
end
