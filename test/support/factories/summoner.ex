defmodule ExConf.Factory.Summoner do
  defmacro __using__(_) do
    quote do

      def summoner_factory do
        %ExConf.Summoner{
          name: sequence(:name, &"Summoner #{&1}"),
          summoner_level: 30,
          profile_icon_id: 1,
        }
      end
    end
  end
end
