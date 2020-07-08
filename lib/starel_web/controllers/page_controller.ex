defmodule StarElWeb.PageController do
  use StarElWeb, :controller
  alias StarEl.User

  def index(conn, _params) do
    render(conn, "index.html", user: User.one)
  end
end
