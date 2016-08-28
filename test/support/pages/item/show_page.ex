defmodule ExConf.ItemShowPage do
  use ExConf.PageHelpers

  def visit(item) do
    navigate_to "/items/#{item.id}"
  end

  def current_page?(item) do
    current_path == "/items/#{item.id}"
  end

  def has_item_name?(item) do
    find_element(:class, "qa-name") |> visible_text == item.name
  end
end
