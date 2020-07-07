defmodule StarElWeb.PageController do
  use StarElWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
