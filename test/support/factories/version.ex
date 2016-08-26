defmodule ExConf.Factory.Version do
  defmacro __using__(_) do
    quote do

      def versions_factory do
        %ExConf.Version{
          id: sequence(:version, &"#{&1}.0.0")
        }
      end
    end
  end
end
