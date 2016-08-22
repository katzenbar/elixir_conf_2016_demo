defmodule Riot.FakeAdapter do
  def get_champions(options) do
    [
      %{
        id: 1,
        key: "Annie",
        name: "Annie",
        title: "the Dark Child",
        # image: %{
        #   full: "Annie.png",
        #   sprite: "champion0.png",
        #   group: "champion",
        #   x: 288,
        #   y: 0,
        #   w: 48,
        #   h: 48
        # },
        skins: [
          %{
            id: 1000,
            name: "default",
            num: 0
          },
          %{
            id: 1001,
            name: "Goth Annie",
            num: 1
          },
          %{
            id: 1002,
            name: "Red Riding Annie",
            num: 2
          },
          %{
            id: 1003,
            name: "Annie in Wonderland",
            num: 3
          },
          %{
            id: 1004,
            name: "Prom Queen Annie",
            num: 4
          },
          %{
            id: 1005,
            name: "Frostfire Annie",
            num: 5
          },
          %{
            id: 1006,
            name: "Reverse Annie",
            num: 6
          },
          %{
            id: 1007,
            name: "FrankenTibbers Annie",
            num: 7
          },
          %{
            id: 1008,
            name: "Panda Annie",
            num: 8
          },
          %{
            id: 1009,
            name: "Sweetheart Annie",
            num: 9
          },
          %{
            id: 1010,
            name: "Hextech Annie",
            num: 10
          }
        ],
        # lore: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of dissent against the new government was underway. These political and social outcasts, known as the Gray Order, sought to leave their neighbors in peace as they pursued dark arcane knowledge.<br><br>The leaders of this outcast society were a married couple: Gregori Hastur, the Gray Warlock, and his wife Amoline, the Shadow Witch. Together they led an exodus of magicians and other intelligentsia from Noxus, resettling their followers beyond the Great Barrier to the northern reaches of the unforgiving Voodoo Lands. Though survival was a challenge at times, the Gray Order's colony managed to thrive in a land where so many others would have failed.<br><br>Years after the exodus, Gregori and Amoline had a child: Annie. Early on, Annie's parents knew there was something special about their daughter. At the age of two, Annie miraculously ensorcelled a shadow bear - a ferocious denizen of the petrified forests outside the colony - turning it into her pet. To this day she keeps her bear ''Tibbers'' by her side, often keeping him spellbound as a stuffed doll to be carried like a child's toy. The combination of Annie's lineage and the dark magic of her birthplace have given this little girl tremendous arcane power.",
        blurb: "There have always been those within Noxus who did not agree with the evils perpetrated by the Noxian High Command. The High Command had just put down a coup attempt from the self-proclaimed Crown Prince Raschallion, and a crackdown on any form of ...",
        # allytips: [
        #   "Storing a stun for use with her ultimate can turn the tide of a team fight.",
        #   "Striking killing blows on minions with Disintegrate enables Annie to farm extremely well early in the game.",
        #   "Molten Shield is a good spell to cast to work up to Annie's stun, so sometimes it's beneficial to grab at least 1 rank in it early."
        # ],
        # enemytips: [
        #   "Annie's summoned bear, Tibbers, burns opposing units around himself. Try to keep your distance from him after he's been summoned.",
        #   "Summoner Smite can be used to help take down Tibbers.",
        #   "Keep an eye out for a white, swirling power around Annie. It means she's ready to unleash her stun."
        # ],
        # tags: [
        #   "Mage"
        # ],
        # partype: "MP",
        # info: {
        #   attack: 2,
        #   defense: 3,
        #   magic: 10,
        #   difficulty: 6
        # },
        # stats: {
        #   armor: 19.22,
        #   armorperlevel: 4,
        #   attackdamage: 50.41,
        #   attackdamageperlevel: 2.625,
        #   attackrange: 575,
        #   attackspeedoffset: 0.08,
        #   attackspeedperlevel: 1.36,
        #   crit: 0,
        #   critperlevel: 0,
        #   hp: 511.68,
        #   hpperlevel: 76,
        #   hpregen: 5.42,
        #   hpregenperlevel: 0.55,
        #   movespeed: 335,
        #   mp: 334,
        #   mpperlevel: 50,
        #   mpregen: 6,
        #   mpregenperlevel: 0.8,
        #   spellblock: 30,
        #   spellblockperlevel: 0
        # },
        # spells: [
        #   {
        #     name: "Disintegrate",
        #     description: "Annie hurls a Mana infused fireball, dealing damage and refunding the Mana cost if it destroys the target.",
        #     sanitizedDescription: "Annie hurls a Mana infused fireball, dealing damage and refunding the Mana cost if it destroys the target.",
        #     tooltip: "Deals {{ e1 }} <span class=\"color99FF99\">(+{{ a1 }})<\/span> magic damage. Mana cost and half the cooldown are refunded if Disintegrate kills the target.",
        #     sanitizedTooltip: "Deals {{ e1 }} (+{{ a1 }}) magic damage. Mana cost and half the cooldown are refunded if Disintegrate kills the target.",
        #     leveltip: {
        #       label: [
        #         "Damage",
        #         "Mana Cost"
        #       ],
        #       effect: [
        #         "{{ e1 }} -> {{ e1NL }}",
        #         " {{ cost }} -> {{ costnNL }}"
        #       ]
        #     },
        #     image: {
        #       full: "Disintegrate.png",
        #       sprite: "spell0.png",
        #       group: "spell",
        #       x: 384,
        #       y: 144,
        #       w: 48,
        #       h: 48
        #     },
        #     resource: "{{ cost }} Mana",
        #     maxrank: 5,
        #     cost: [
        #       60,
        #       65,
        #       70,
        #       75,
        #       80
        #     ],
        #     costType: "Mana",
        #     costBurn: "60\/65\/70\/75\/80",
        #     cooldown: [
        #       4,
        #       4,
        #       4,
        #       4,
        #       4
        #     ],
        #     cooldownBurn: "4",
        #     effect: [
        #       null,
        #       [
        #         80,
        #         115,
        #         150,
        #         185,
        #         220
        #       ]
        #     ],
        #     effectBurn: [
        #       "",
        #       "80\/115\/150\/185\/220"
        #     ],
        #     vars: [
        #       {
        #         key: "a1",
        #         link: "spelldamage",
        #         coeff: [
        #           0.8
        #         ]
        #       }
        #     ],
        #     range: [
        #       625,
        #       625,
        #       625,
        #       625,
        #       625
        #     ],
        #     rangeBurn: "625",
        #     key: "Disintegrate"
        #   },
        #   {
        #     name: "Incinerate",
        #     description: "Annie casts a blazing cone of fire, dealing damage to all enemies in the area.",
        #     sanitizedDescription: "Annie casts a blazing cone of fire, dealing damage to all enemies in the area.",
        #     tooltip: "Casts a cone of fire dealing {{ e1 }} <span class=\"color99FF99\">(+{{ a1 }})<\/span> magic damage to all enemies in the area.",
        #     sanitizedTooltip: "Casts a cone of fire dealing {{ e1 }} (+{{ a1 }}) magic damage to all enemies in the area.",
        #     leveltip: {
        #       label: [
        #         "Damage",
        #         "Mana Cost"
        #       ],
        #       effect: [
        #         "{{ e1 }} -> {{ e1NL }}",
        #         " {{ cost }} -> {{ costnNL }}"
        #       ]
        #     },
        #     image: {
        #       full: "Incinerate.png",
        #       sprite: "spell0.png",
        #       group: "spell",
        #       x: 432,
        #       y: 144,
        #       w: 48,
        #       h: 48
        #     },
        #     resource: "{{ cost }} Mana",
        #     maxrank: 5,
        #     cost: [
        #       70,
        #       80,
        #       90,
        #       100,
        #       110
        #     ],
        #     costType: "Mana",
        #     costBurn: "70\/80\/90\/100\/110",
        #     cooldown: [
        #       8,
        #       8,
        #       8,
        #       8,
        #       8
        #     ],
        #     cooldownBurn: "8",
        #     effect: [
        #       null,
        #       [
        #         70,
        #         115,
        #         160,
        #         205,
        #         250
        #       ]
        #     ],
        #     effectBurn: [
        #       "",
        #       "70\/115\/160\/205\/250"
        #     ],
        #     vars: [
        #       {
        #         key: "a1",
        #         link: "spelldamage",
        #         coeff: [
        #           0.85
        #         ]
        #       }
        #     ],
        #     range: [
        #       600,
        #       600,
        #       600,
        #       600,
        #       600
        #     ],
        #     rangeBurn: "600",
        #     key: "Incinerate"
        #   },
        #   {
        #     name: "Molten Shield",
        #     description: "Grants Annie and Tibbers increased percentage Damage Resist and damages enemies who attack with basic attacks.",
        #     sanitizedDescription: "Grants Annie and Tibbers increased percentage Damage Resist and damages enemies who attack with basic attacks.",
        #     tooltip: "Annie grants herself and Tibbers {{ e1 }}% damage reduction for {{ e3 }} seconds.<br><br>While the shield is active, enemies who basic attack it take {{ e2 }} <span class=\"color99FF99\">(+{{ a1 }})<\/span> magic damage.",
        #     sanitizedTooltip: "Annie grants herself and Tibbers {{ e1 }}% damage reduction for {{ e3 }} seconds. While the shield is active, enemies who basic attack it take {{ e2 }} (+{{ a1 }}) magic damage.",
        #     leveltip: {
        #       label: [
        #         "Damage Reduction",
        #         "Damage Return"
        #       ],
        #       effect: [
        #         "{{ e1 }}% -> {{ e1NL }}%",
        #         "{{ e2 }} -> {{ e2NL }}"
        #       ]
        #     },
        #     image: {
        #       full: "MoltenShield.png",
        #       sprite: "spell1.png",
        #       group: "spell",
        #       x: 0,
        #       y: 0,
        #       w: 48,
        #       h: 48
        #     },
        #     resource: "{{ cost }} Mana",
        #     maxrank: 5,
        #     cost: [
        #       20,
        #       20,
        #       20,
        #       20,
        #       20
        #     ],
        #     costType: "Mana",
        #     costBurn: "20",
        #     cooldown: [
        #       10,
        #       10,
        #       10,
        #       10,
        #       10
        #     ],
        #     cooldownBurn: "10",
        #     effect: [
        #       null,
        #       [
        #         16,
        #         22,
        #         28,
        #         34,
        #         40
        #       ],
        #       [
        #         20,
        #         30,
        #         40,
        #         50,
        #         60
        #       ],
        #       [
        #         3,
        #         3,
        #         3,
        #         3,
        #         3
        #       ]
        #     ],
        #     effectBurn: [
        #       "",
        #       "16/22/28/34/40",
        #       "20/30/40/50/60",
        #       "3"
        #     ],
        #     vars: [
        #       {
        #         key: "a1",
        #         link: "spelldamage",
        #         coeff: [
        #           0.2
        #         ]
        #       }
        #     ],
        #     range: [
        #       0,
        #       0,
        #       0,
        #       0,
        #       0
        #     ],
        #     rangeBurn: "0",
        #     key: "MoltenShield"
        #   },
        #   {
        #     name: "Summon: Tibbers",
        #     description: "Annie wills her bear Tibbers to life, dealing damage to units in the area. Tibbers can attack and also burns enemies that stand near him.",
        #     sanitizedDescription: "Annie wills her bear Tibbers to life, dealing damage to units in the area. Tibbers can attack and also burns enemies that stand near him.",
        #     tooltip: "Summons Tibbers, dealing {{ e1 }} <span class=\"color99FF99\">(+{{ a1 }})<\/span> magic damage to enemies in the target area. For the next 45 seconds, Tibbers burns nearby enemies for {{ e2 }} <span class=\"color99FF99\">(+{{ a2 }})<\/span> per second and attacks for {{ e3 }} <span class=\"color99FF99\">(+{{ f1 }})<\/span> as magic damage. Annie can control Tibbers by reactivating this ability.<br><br>Tibbers <span class=\"colorFFEB7F\">Enrages<\/span> when: summoned; Annie uses Pyromania on an enemy Champion; and when Annie dies.<br><br><span class=\"colorFFEB7F\">Enrages<\/span>: Tibbers gains 275% Attack Speed and 100% Movement Speed, decaying over 3 seconds.",
        #     sanitizedTooltip: "Summons Tibbers, dealing {{ e1 }} (+{{ a1 }}) magic damage to enemies in the target area. For the next 45 seconds, Tibbers burns nearby enemies for {{ e2 }} (+{{ a2 }}) per second and attacks for {{ e3 }} (+{{ f1 }}) as magic damage. Annie can control Tibbers by reactivating this ability. Tibbers Enrages when: summoned; Annie uses Pyromania on an enemy Champion; and when Annie dies. Enrages: Tibbers gains 275% Attack Speed and 100% Movement Speed, decaying over 3 seconds.",
        #     leveltip: {
        #       label: [
        #         "Damage",
        #         "Tibbers Health",
        #         "Tibbers Armor and Magic Resist",
        #         "Tibbers Attack Damage",
        #         "Tibbers Burn Damage",
        #         "Cooldown"
        #       ],
        #       effect: [
        #         "{{ e1 }} -> {{ e1NL }}",
        #         "{{ e10 }} -> {{ e10NL }}",
        #         "{{ e7 }} -> {{ e7NL }}",
        #         "{{ e3 }} -> {{ e3NL }}",
        #         "{{ e2 }} -> {{ e2NL }}",
        #         "{{ cooldown }} -> {{ cooldownnNL }}"
        #       ]
        #     },
        #     image: {
        #       full: "InfernalGuardian.png",
        #       sprite: "spell1.png",
        #       group: "spell",
        #       x: 48,
        #       y: 0,
        #       w: 48,
        #       h: 48
        #     },
        #     resource: "{{ cost }} Mana",
        #     maxrank: 3,
        #     cost: [
        #       100,
        #       100,
        #       100
        #     ],
        #     costType: "Mana",
        #     costBurn: "100",
        #     cooldown: [
        #       120,
        #       100,
        #       80
        #     ],
        #     cooldownBurn: "120\/100\/80",
        #     effect: [
        #       null,
        #       [
        #         150,
        #         275,
        #         400
        #       ],
        #       [
        #         10,
        #         15,
        #         20
        #       ],
        #       [
        #         50,
        #         75,
        #         100
        #       ],
        #       [
        #         -0.1,
        #         -0.1,
        #         -0.1
        #       ],
        #       [
        #         1,
        #         1,
        #         1
        #       ],
        #       [
        #         3,
        #         3,
        #         3
        #       ],
        #       [
        #         30,
        #         50,
        #         70
        #       ],
        #       [
        #         0,
        #         900,
        #         1800
        #       ],
        #       [
        #         0.15,
        #         0.15,
        #         0.15
        #       ],
        #       [
        #         1200,
        #         2100,
        #         3000
        #       ]
        #     ],
        #     effectBurn: [
        #       "",
        #       "150\/275\/400",
        #       "10\/15\/20",
        #       "50\/75\/100",
        #       "-0.1",
        #       "1",
        #       "3",
        #       "30\/50\/70",
        #       "0\/900\/1800",
        #       "0.15",
        #       "1200\/2100\/3000"
        #     ],
        #     vars: [
        #       {
        #         key: "a1",
        #         link: "spelldamage",
        #         coeff: [
        #           0.65
        #         ]
        #       },
        #       {
        #         key: "a2",
        #         link: "spelldamage",
        #         coeff: [
        #           0.1
        #         ]
        #       }
        #     ],
        #     range: [
        #       600,
        #       600,
        #       600
        #     ],
        #     rangeBurn: "600",
        #     key: "InfernalGuardian"
        #   }
        # ],
        # passive: {
        #   name: "Pyromania",
        #   description: "After casting 4 spells, Annie's next offensive spell will stun the target for a short duration.",
        #   sanitizedDescription: "After casting 4 spells, Annie's next offensive spell will stun the target for a short duration.",
        #   image: {
        #     full: "Annie_Passive.png",
        #     sprite: "passive0.png",
        #     group: "passive",
        #     x: 288,
        #     y: 0,
        #     w: 48,
        #     h: 48
        #   }
        # },
        # recommended: [
        #   {
        #     champion: "Annie",
        #     title: "AnnieCS",
        #     type: "riot",
        #     map: "CS",
        #     mode: "ODIN",
        #     blocks: [
        #       {
        #         type: "starting",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 1
        #           },
        #           {
        #             id: 2003,
        #             count: 2
        #           },
        #           {
        #             id: 3340,
        #             count: 1
        #           },
        #           {
        #             id: 3802,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "early",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1001,
        #             count: 1
        #           },
        #           {
        #             id: 3113,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "standard",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3157,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "situational",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3001,
        #             count: 1
        #           },
        #           {
        #             id: 3030,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "consumables",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 2003,
        #             count: 1
        #           },
        #           {
        #             id: 2043,
        #             count: 1
        #           },
        #           {
        #             id: 2139,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "AnnieFIRSTBLOOD",
        #     type: "riot",
        #     map: "HA",
        #     mode: "FIRSTBLOOD",
        #     blocks: [
        #       {
        #         type: "starting",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 1
        #           },
        #           {
        #             id: 2003,
        #             count: 2
        #           },
        #           {
        #             id: 3340,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "early",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1001,
        #             count: 1
        #           },
        #           {
        #             id: 1058,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "standard",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3157,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "situational",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3001,
        #             count: 1
        #           },
        #           {
        #             id: 3152,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "consumables",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 2003,
        #             count: 1
        #           },
        #           {
        #             id: 2043,
        #             count: 1
        #           },
        #           {
        #             id: 2139,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "AnnieSIEGE",
        #     type: "riot",
        #     map: "SR",
        #     mode: "SIEGE",
        #     blocks: [
        #       {
        #         type: "siegeOffense",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3631,
        #             count: 1
        #           },
        #           {
        #             id: 3641,
        #             count: 1
        #           },
        #           {
        #             id: 3647,
        #             count: 1
        #           },
        #           {
        #             id: 3635,
        #             count: 1
        #           },
        #           {
        #             id: 3642,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "siegeDefense",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3634,
        #             count: 1
        #           },
        #           {
        #             id: 3640,
        #             count: 1
        #           },
        #           {
        #             id: 3643,
        #             count: 1
        #           },
        #           {
        #             id: 3636,
        #             count: 1
        #           },
        #           {
        #             id: 3642,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "standard",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3157,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "situational",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3029,
        #             count: 1
        #           },
        #           {
        #             id: 3001,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "AnnieSR",
        #     type: "riot",
        #     map: "SR",
        #     mode: "CLASSIC",
        #     blocks: [
        #       {
        #         type: "starting",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 1
        #           },
        #           {
        #             id: 2003,
        #             count: 2
        #           },
        #           {
        #             id: 3340,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "early",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1001,
        #             count: 1
        #           },
        #           {
        #             id: 3802,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "standard",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3157,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "situational",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3027,
        #             count: 1
        #           },
        #           {
        #             id: 3001,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "consumables",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 2003,
        #             count: 1
        #           },
        #           {
        #             id: 2043,
        #             count: 1
        #           },
        #           {
        #             id: 2139,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "AnnieTT",
        #     type: "riot",
        #     map: "TT",
        #     mode: "CLASSIC",
        #     blocks: [
        #       {
        #         type: "starting",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 2
        #           },
        #           {
        #             id: 2003,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "offensive",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3090,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3027,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "defensive",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3001,
        #             count: 1
        #           },
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3030,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "consumables",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 2003,
        #             count: 1
        #           },
        #           {
        #             id: 2139,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "Beginner",
        #     type: "riot",
        #     map: "SR",
        #     mode: "INTRO",
        #     blocks: [
        #       {
        #         type: "beginner_starter",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "beginner_starter",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 1056,
        #             count: 1
        #           },
        #           {
        #             id: 2003,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "beginner_advanced",
        #         recMath: true,
        #         items: [
        #           {
        #             id: 1028,
        #             count: 1
        #           },
        #           {
        #             id: 1027,
        #             count: 1
        #           },
        #           {
        #             id: 3010,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "beginner_movementspeed",
        #         recMath: true,
        #         items: [
        #           {
        #             id: 1001,
        #             count: 1
        #           },
        #           {
        #             id: 3020,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "beginner_legendaryitem",
        #         recMath: true,
        #         items: [
        #           {
        #             id: 3010,
        #             count: 1
        #           },
        #           {
        #             id: 1026,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "beginner_morelegendaryitems",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3027,
        #             count: 1
        #           },
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   },
        #   {
        #     champion: "Annie",
        #     title: "Map12",
        #     type: "riot",
        #     map: "HA",
        #     mode: "ARAM",
        #     blocks: [
        #       {
        #         type: "starting",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3112,
        #             count: 1
        #           },
        #           {
        #             id: 1001,
        #             count: 1
        #           },
        #           {
        #             id: 2031,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "essential",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3020,
        #             count: 1
        #           },
        #           {
        #             id: 3285,
        #             count: 1
        #           },
        #           {
        #             id: 3152,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "offensive",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3089,
        #             count: 1
        #           },
        #           {
        #             id: 3135,
        #             count: 1
        #           },
        #           {
        #             id: 3165,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "defensive",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 3157,
        #             count: 1
        #           },
        #           {
        #             id: 3116,
        #             count: 1
        #           },
        #           {
        #             id: 3001,
        #             count: 1
        #           }
        #         ]
        #       },
        #       {
        #         type: "consumables",
        #         recMath: false,
        #         items: [
        #           {
        #             id: 2003,
        #             count: 1
        #           },
        #           {
        #             id: 2139,
        #             count: 1
        #           },
        #           {
        #             id: 2033,
        #             count: 1
        #           }
        #         ]
        #       }
        #     ]
        #   }
        # ]
      },
    ]
  end
end
