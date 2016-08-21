defmodule ExConf.IndexPage do
  use ExConf.PageHelpers

  def visit do
    navigate_to "/"
  end

  def view_champion(champion) do
    find_element(:css, ".qa-champion-#{champion.key} .qa-show")
    |> click
  end

  def has_champion?(champion) do
    find_element(:class, "qa-champion-#{champion.key}")
  end
end
