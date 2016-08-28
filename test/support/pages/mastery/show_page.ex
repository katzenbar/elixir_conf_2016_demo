defmodule ExConf.MasteryShowPage do
  use ExConf.PageHelpers

  def visit(mastery) do
    navigate_to "/masteries/#{mastery.id}"
  end

  def current_page?(mastery) do
    current_path == "/masteries/#{mastery.id}"
  end

  def has_mastery_name?(mastery) do
    find_element(:class, "qa-name") |> visible_text == mastery.name
  end

  def has_skin?(skin) do
    find_element(:class, "qa-skin-#{skin.id}")
  end
end
