defmodule Riot do
  @config Application.get_env(:elixir_conf_2016_demo, Riot)

  def get_champions(options \\ %{}) do
    options = %{
      data_by_id: true,
      champ_data: Map.get(options, :blurb, "all")
    }

    @config[:adapter].get_champions(options)
  end

  def get_items do
    @config[:adapter].get_items
  end

  def get_masteries do
    @config[:adapter].get_masteries
  end

  def get_summoner_by_name(name) do
    @config[:adapter].get_summoner_by_name(name)
  end

  def get_versions do
    @config[:adapter].get_versions
  end
end
