defmodule ExConf.PageHelpers do
  defmacro __using__(_) do
    quote do
      use Hound.Helpers
    end
  end
end
