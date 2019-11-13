defmodule NovyWeb.WatchController do
  use NovyWeb, :controller

  alias Novy.Multimedia

  def show(conn, %{"id" => id}) do
    video = Multimedia.get_video!(id)
    render(conn, "show.html", video: video)
  end
end
