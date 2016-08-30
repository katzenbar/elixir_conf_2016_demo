defmodule ExConf.SummonerIndexPage do
  use ExConf.PageHelpers

  def visit(summoner) do
    navigate_to "/summoners?summoner[name]=#{summoner.name}"
  end

  def path(summoner) do
    "/summoners"
  end

  def has_summoner?(summoner) do
    find_element(:class, "qa-summoner-#{summoner.id}")
  end
end
