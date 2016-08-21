defmodule Riot.FakeAdapter do
  def get_champions(options) do
    [
      %{
        id: 1,
        name: "Annie",
        title: "the Dark Child",
        blurb: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...",
        key: "Annie",
      },
      %{
        id: 15,
        title: "the Battle Mistress",
        name: "Sivir",
        blurb: "''I don't care what face is on your coin, as long as it pays.''<br><br>Sivir is a renowned fortune hunter and mercenary captain who plies her trade in the deserts of Shurima. Armed with her legendary jeweled crossblade, she has fought and won ...",
        key: "Sivir"
      }
    ]
  end
end
