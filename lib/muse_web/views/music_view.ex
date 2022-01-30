defmodule MuseWeb.MusicView do
  use MuseWeb, :view

  def render("create.json", %{music: music}) do
    %{
      message: "Banana",
      music: music
    }
  end
end
