defmodule ExConf.MasteryIndexPage do
  use ExConf.PageHelpers

  def visit do
    navigate_to "/masteries"
  end

  def view_mastery(mastery) do
    find_element(:css, ".qa-mastery-#{mastery.id} .qa-show")
    |> click
  end

  def has_mastery?(mastery) do
    find_element(:class, "qa-mastery-#{mastery.id}")
  end
end
