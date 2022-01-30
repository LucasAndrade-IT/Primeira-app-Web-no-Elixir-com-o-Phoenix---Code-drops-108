defmodule Muse.Music do
  def create("ok") do
    {:ok, %{title: "In the End", artist: "Linkin Park", album: "Meteora"}}
  end

  def create("error") do
      {:erro, "Error while creating music"}
  end
end
