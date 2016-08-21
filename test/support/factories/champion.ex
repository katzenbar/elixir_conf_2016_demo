defmodule ExConf.Factory.Champion do
  defmacro __using__(_) do
    quote do

      def champion_factory do
        %ExConf.Champion{
          name: sequence(:name, &"Champion #{&1}"),
          title: sequence(:title, &"Short Description #{&1}"),
          blurb: sequence(:blurb, &"Long Description #{&1}"),
          key: sequence(:key, &"Champion#{&1}"),
        }
      end
    end
  end
end
