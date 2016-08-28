defmodule ExConf.Factory.Mastery do
  defmacro __using__(_) do
    quote do

      def mastery_factory do
        %ExConf.Mastery{
          name: sequence(:name, &"Mastery #{&1}"),

          ranks: 1,
          description: ["asdf"],
          sanitized_description: ["asdf"],

          mastery_tree: "Ferocity",
        }
      end
    end
  end
end
