defmodule ExConf.Factory.Item do
  defmacro __using__(_) do
    quote do

      def item_factory do
        %ExConf.Item{
          name: sequence(:name, &"Item #{&1}"),

          description: "",
          sanitized_description: "",
          plaintext: "",

          purchasable: true,
          total_cost: 2400,
          base_cost: 400,
          sell_cost: 100,
        }
      end
    end
  end
end
