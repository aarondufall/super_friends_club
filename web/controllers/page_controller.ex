defmodule SuperFriendsClub.PageController do
  use SuperFriendsClub.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
