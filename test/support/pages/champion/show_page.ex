defmodule ExConf.ChampionShowPage do
  use ExConf.PageHelpers

  def visit(champion) do
    navigate_to "/champions/#{champion.id}"
  end

  def current_page?(champion) do
    current_path == "/champions/#{champion.id}"
  end

  def has_champion_name?(champion) do
    find_element(:class, "qa-name") |> visible_text == champion.name
  end
end
