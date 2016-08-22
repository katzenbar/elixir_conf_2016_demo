defmodule ExConf.Factory.Skin do
  defmacro __using__(_) do
    quote do

      def skin_factory do
        %ExConf.Skin{
          num: sequence(:num, &(&1)),
          name: sequence(:name, &"Skin #{&1}"),

          champion: build(:champion)
        }
      end
    end
  end
end
