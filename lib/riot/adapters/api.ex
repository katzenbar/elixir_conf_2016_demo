defmodule Riot.ApiAdapter do
  @config Application.get_env(:elixir_conf_2016_demo, Riot)

  def get_champions(options) do
    response = HTTPoison.get!("https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?dataById=#{options[:data_by_id]}&champData=#{options[:champ_data]}&api_key=#{@config[:api_key]}")

    Poison.Parser.parse!(response.body, keys: :atoms).data
    |> Enum.map(fn({_k, v}) -> v end)
  end
end
