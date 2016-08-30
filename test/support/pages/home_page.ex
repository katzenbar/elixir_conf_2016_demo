defmodule ExConf.HomePage do
  use ExConf.PageHelpers

  def visit do
    navigate_to "/"
  end

  def search_for_summoner(summoner_name) do
    fill_field({:class, "qa-summoner-search-input"}, summoner_name)
    click({:class, "qa-summoner-search-submit"})
  end
end
