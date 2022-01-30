defmodule MuseWeb.MusicController do
  use MuseWeb, :controller

  alias Muse.Music

  def index(conn, _params) do
    "ok"
    |> Music.create()
    |> handle_reponse(conn)
  end

  defp handle_reponse({:ok, music}, conn) do
    conn
    |> put_status(200)
    |> render("create.json", music: music)
  end

  defp handle_reponse({:error, message}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message })
  end
end
