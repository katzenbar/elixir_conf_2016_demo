defmodule ExConf.VersionIndexPage do
  use ExConf.PageHelpers

  def visit do
    navigate_to "/versions"
  end

  def has_version?(version) do
    find_element(:class, "qa-version-#{String.replace(version.id, ".", "-")}")
  end
end
