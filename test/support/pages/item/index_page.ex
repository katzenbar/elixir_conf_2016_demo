defmodule ExConf.ItemIndexPage do
  use ExConf.PageHelpers

  def visit do
    navigate_to "/items"
  end

  def view_item(item) do
    find_element(:css, ".qa-item-#{item.id} .qa-show")
    |> click
  end

  def has_item?(item) do
    find_element(:class, "qa-item-#{item.id}")
  end
end
