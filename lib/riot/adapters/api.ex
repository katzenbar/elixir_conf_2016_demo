defmodule Riot.ApiAdapter do
  @config Application.get_env(:elixir_conf_2016_demo, Riot)

  def get_champions(options) do
    response = HTTPoison.get!("https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?dataById=#{options[:data_by_id]}&champData=#{options[:champ_data]}&api_key=#{@config[:api_key]}")

    Poison.Parser.parse!(response.body, keys: :atoms).data
    |> Enum.map(fn({_k, v}) -> v end)
  end

  def get_items do
    response = HTTPoison.get!("https://global.api.pvp.net/api/lol/static-data/na/v1.2/item?itemListData=all&api_key=#{@config[:api_key]}")

    Poison.Parser.parse!(response.body, keys: :atoms).data
    |> Enum.map(fn({_k, v}) -> v end)
  end

  def get_masteries do
    response = HTTPoison.get!("https://global.api.pvp.net/api/lol/static-data/na/v1.2/mastery?masteryListData=all&api_key=#{@config[:api_key]}")

    Poison.Parser.parse!(response.body, keys: :atoms).data
    |> Enum.map(fn({_k, v}) -> v end)
  end


  def get_versions do
    response = HTTPoison.get!("https://global.api.pvp.net/api/lol/static-data/na/v1.2/versions?api_key=#{@config[:api_key]}")

    Poison.Parser.parse!(response.body)
  end
end
