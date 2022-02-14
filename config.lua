Config = {}

Config.DebugPoly = true

Config.MinZOffset = 45

Config.MinimumHouseRobberyPolice = 0

Config.MinimumTime = 1
Config.MaximumTime = 11

Config.Rewards = {
    [1] = {
        ["cabin"] = {
            "rolex",
            "diamond_ring",
            "goldchain",
        },
        ["kitchen"] = {
            "slushy",
            "slushy",
            "iphone",
			"samsungphone",
        },
        ["chest"] = {
            "rolex",
			"rolex",
            "diamond_ring",
			"diamond_ring",
            "samsungphone",
			"samsungphone",
			"iphone",
			"iphone",
        },
        ["box"] = {
            "rolex",
            "diamond_ring",
            "goldchain",
			"goldchain",
			"goldchain",
        },
    },
    [2] = {
        ["cabin"] = {
            "goldchain",
            "goldchain",
            "goldchain",
			"goldchain",
        },
        ["kitchen"] = {
            "iphone",
            "iphone",
            "samsungphone",
			"samsungphone",
        },
        ["chest"] = {
            "rolex",
			"rolex",
            "rolex",
			"rolex",
            "samsungphone",
			"samsungphone",
			"iphone",
			"iphone",
			"laptop",
            "laptop",
        },
        ["box"] = {
            "goldchain",
            "goldchain",
            "goldchain",
			"goldchain",
			"goldchain",
        },
    },
}

Config.Houses = {
    ["house1"] = { -- Moved 28-1-2020
        coords = vector4(500.75, -1697.16, 29.78, 326.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(503.51, -1701.47, -12.92),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(497.24, -1703.70, -12.92),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(506.64, -1694.58, -12.92),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(510.51, -1698.51, -12.92),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(501.79, -1703.8, -12.92),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(496.06, -1696.42, -12.92),
              ["heading"] = 90.0,
              ["boxx"] = 1.50,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
        },
    },
    ["house2"] = {
        coords = vector4(46.46, -30.96, 73.68, 229.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(49.25, -35.30, 30.98),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(42.94, -37.44, 30.98),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(52.35, -28.38, 30.98),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(56.21, -32.33, 30.98),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(47.48, -37.47, 30.98),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "microwave",
              ["PropName"] = "prop_micro_01",
              ["coords"] = vector3(48.28615, -35.6276, 31.090),
              ["heading"] = 90.0,
              ["boxx"] = 0.75,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
        },
    },
    ["house3"] = {
        coords = vector4(-784.45, 459.3, 100.17, 229.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-781.69, 454.96, 57.57),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-787.97, 452.71, 57.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-778.59, 461.88, 57.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-774.72, 457.93, 57.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-783.43, 452.76, 57.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(-785.708, 455.6182, 57.409),
              ["heading"] = 90.0,
              ["boxx"] = 0.75,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "television",
                ["PropName"] = "Prop_TV_Flat_01",
                ["coords"] = vector3(-790.029, 460.0392, 57.551),
                ["heading"] = 90.0,
                ["boxx"] = 1.50,
                ["boxy"] = 2.50,
                ["text"] = "Take Object"
            },
        },
    },
    ["house4"] = {
        coords = vector4(-536.63, 818.51, 197.51, 229.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-533.87, 814.21, 154.81),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-540.13, 811.96, 154.8),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-530.78, 821.08, 154.81),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-526.88, 817.13, 154.81),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-535.62, 812.08, 154.81),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(-537.85, 814.9194, 154.92),
              ["heading"] = 90.0,
              ["boxx"] = 0.75,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(-534.489, 813.9856, 154.77),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house5"] = {
        coords = vector4(1229.64, -725.33, 60.95, 97.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1232.412, -732.880, 17.791),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1229.404, -726.935, 17.779),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1240.420, -722.034, 17.814),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1225.825, -732.900, 22.272),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1231.025, -737.130, 21.232),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "artpiece",
              ["PropName"] = "apa_p_h_acc_artwalll_02",
              ["coords"] = vector3(1221.895, -719.383, 22.696),
              ["heading"] = 0.0,
              ["boxx"] = 0.50,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "apa_mp_h_acc_artwallm_04",
                ["coords"] = vector3(1223.850, -727.600, 22.774),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 1.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house6"] = {
        coords = vector4(808.83, -163.65, 75.87, 331.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(811.650, -167.956, 33.196),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(805.32, -170.20, 33.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(814.73, -161.08, 33.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(818.56, -165.02, 33.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(809.82, -170.18, 33.17),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(803.3301, -162.719, 33.023),
              ["heading"] = 90.0,
              ["boxx"] = 1.50,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(811.000, -168.250, 33.151),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house7"] = {
        coords = vector4(5.76, -9.49, 70.3, 159.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(8.54, -13.82, 27.6),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(2.3, -16.07, 27.6),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(11.6, -6.89, 27.6),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(15.40464, -10.9103, 28.155),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(6.78, -16.05, 27.6),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(4.501854, -13.1401, 27.623),
              ["heading"] = 90.0,
              ["boxx"] = 0.75,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(7.899355, -14.1771, 27.526),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house8"] = { -- Moved 28-1-20
        coords = vector4(1010.41, -423.39, 65.34, 133.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1013.23, -427.7, 22.64),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1006.88, -429.96, 22.64),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1016.26, -420.82, 22.64),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1020.12, -424.75, 22.64),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1011.39, -429.92, 22.64),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(1009.150, -427.021, 22.592),
              ["heading"] = 90.0,
              ["boxx"] = 0.50,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1012.550, -428.027, 22.636),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house9"] = { -- Moved 28-1-2020
        coords = vector4(-678.96, 512.12, 113.52, 18.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-676.139, 504.5653, 70.361),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-679.064, 510.5978, 70.332),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-668.074, 515.4074, 70.131),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-682.870, 504.5497, 74.842),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-677.607, 500.6468, 74.179),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "artpiece",
              ["PropName"] = "apa_p_h_acc_artwalll_02",
              ["coords"] = vector3(-686.614, 518.1699, 75.404),
              ["heading"] = 0.0,
              ["boxx"] = 0.50,
              ["boxy"] = 3.00,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "ex_mp_h_acc_artwallm_02",
                ["coords"] = vector3(-686.500, 517.7500, 70.791),
                ["heading"] = 0.0,
                ["boxx"] = 0.75,
                ["boxy"] = 1.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house10"] = {
        coords = vector4(-1308.13, 448.89, 100.96, 172.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1305.31, 441.3381, 57.801),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1308.24, 447.3600, 57.778),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-1297.28, 452.1908, 57.571),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-1311.95, 441.3222, 62.282),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1306.70, 437.3234, 61.760),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "apa_mp_h_str_avunits_01",
              ["coords"] = vector3(-1309.59, 437.3952, 57.865),
              ["heading"] = 180.0,
              ["boxx"] = 0.75,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "apa_mp_h_acc_artwallm_04",
                ["coords"] = vector3(-1313.99, 446.7512, 62.469),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 1.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house11"] = {
        coords = vector4(-1413.59,  462.1,  109.2,  164.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1410.75, 454.4768, 66.041),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1413.64, 460.60, 66.107),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-1402.75, 465.4844, 65.811),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-1417.47, 454.5102, 70.522),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1412.22, 450.2932, 69.784),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "apa_mp_h_str_avunits_01",
              ["coords"] = vector3(-1415.11, 450.3053, 65.798),
              ["heading"] = 180.0,
              ["boxx"] = 0.75,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "apa_mp_h_acc_artwallm_04",
                ["coords"] = vector3(-1419.45, 459.8734, 71.002),
                ["heading"] = 90.0,
                ["boxx"] = 0.50,
                ["boxy"] = 1.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house12"] = {
        coords = vector4(-2015.01,  499.84,  107.17,  85.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2012.18, 492.2652, 64.011),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2015.12, 498.3758, 63.988),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-2004.23, 503.1805, 63.781),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-2018.87, 492.2805, 68.492),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2013.63, 488.0240, 68.252),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "artpiece",
              ["PropName"] = "ex_mp_h_acc_artwallm_02",
              ["coords"] = vector3(-2015.19, 498.5723, 64.093),
              ["heading"] = 180.0,
              ["boxx"] = 0.75,
              ["boxy"] = 2.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "apa_p_h_acc_artwalll_02",
                ["coords"] = vector3(-2022.85, 505.9724, 69.085),
                ["heading"] = 0.0,
                ["boxx"] = 0.75,
                ["boxy"] = 2.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house13"] = {
        coords = vector4(329.37,  -1845.84,  27.74,  236.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(332.19, -1850.17, -14.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(325.86, -1852.38, -14.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(335.22, -1843.27, -14.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(339.1, -1847.2, -14.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(330.37, -1852.38, -14.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(328.10, -1849.52, -15.02),
              ["heading"] = 90.0,
              ["boxx"] = 0.75,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(331.3648, -1850.45, -14.92),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house14"] = {
        coords = vector4(489.64, -1714.1, 29.7, 49.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(492.41, -1718.42, -12.95),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(486.13, -1720.65, -13.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(495.54, -1711.56, -13.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(499.3, -1715.48, -13.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(490.65, -1720.57, -13.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(488.35, -1717.80, -13.04),
              ["heading"] = 90.0,
              ["boxx"] = 0.25,
              ["boxy"] = 0.75,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(491.5265, -1718.63, -12.74),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house15"] = {
        coords = vector4(1312.14, -1697.35, 58.22, 11.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1314.90, -1701.68, 15.52),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1308.64, -1703.88, 15.52),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1318.02, -1694.77, 15.52),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1321.88, -1698.73, 15.52),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1313.15, -1703.86, 15.52),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(496.06, -1696.42, -12.92),
              ["heading"] = 90.0,
              ["boxx"] = 1.50,
              ["boxy"] = 3.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(496.06, -1696.42, -12.92),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
              },
        },
    },
    ["house16"] = {
        coords = vector4(1379.2, -1514.89, 58.43, 30.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1381.97, -1519.22, 15.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1375.70, -1521.42, 15.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1385.05, -1512.32, 15.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1388.95, -1516.27, 15.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1380.20, -1521.37, 15.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(1373.835, -1514.11, 15.655),
              ["heading"] = 90.0,
              ["boxx"] = 1.50,
              ["boxy"] = 3.50,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1381.223, -1519.56, 15.627),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house17"] = {
        coords = vector4(1314.47, -1733.15, 54.7, 115.27),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1317.25, -1737.48, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1310.97, -1739.70, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1320.33, -1730.57, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1324.22, -1734.50, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1315.48, -1739.68, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "musicequipment",
                ["PropName"] = "prop_tapeplayer_01",
                ["coords"] = vector3(1313.230, -1736.75, 12.170),
                ["heading"] = 90.0,
                ["boxx"] = 0.25,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1316.577, -1737.79, 12.152),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    ["house18"] = {
        coords = vector4(1300.41, -1752.34, 54.27, 292.46),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1303.18, -1756.67, 11.57),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1296.90, -1758.90, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1306.25, -1749.77, 11.57),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1310.18, -1753.71, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1301.38, -1758.89, 12.0),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "musicequipment",
                ["PropName"] = "prop_tapeplayer_01",
                ["coords"] = vector3(1299.144, -1756.00, 11.513),
                ["heading"] = 187.5,
                ["boxx"] = 0.25,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1302.500, -1756.97, 11.298),
                ["heading"] = 90.0,
                ["boxx"] = 0.75,
                ["boxy"] = 0.75,
                ["text"] = "Take Object"
            },
        },
    },
    --// TIER 2
    ["house19"] = {
        coords = vector4(-446.18, 686.36, 153.12, 20.12),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-443.359, 678.8075, 109.96),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-446.246, 684.7706, 110.01),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-435.312, 689.7086, 109.73),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-449.977, 678.850, 114.44),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-444.810, 674.6101, 113.49),
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(-447.784, 675.5838, 109.87),
              ["heading"] = 90.0,
              ["boxx"] = 1.5,
              ["boxy"] = 2.5,
              ["text"] = "Take Object"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "pcequipment",
                ["PropName"] = "prop_laptop_01a",
                ["coords"] = vector3(-453.39, 684.34, 113.67),
                ["heading"] = 187.5,
                ["boxx"] = 1.5,
                ["boxy"] = 2.5,
                ["text"] = "Take Object"
            },
        },
    },
}

Config.MaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [16] = true,
    [18] = true,
    [26] = true,
    [52] = true,
    [53] = true,
    [54] = true,
    [55] = true,
    [56] = true,
    [57] = true,
    [58] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [112] = true,
    [113] = true,
    [114] = true,
    [118] = true,
    [125] = true,
    [132] = true,
}

Config.FemaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [19] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [63] = true,
    [64] = true,
    [65] = true,
    [66] = true,
    [67] = true,
    [68] = true,
    [69] = true,
    [70] = true,
    [71] = true,
    [129] = true,
    [130] = true,
    [131] = true,
    [135] = true,
    [142] = true,
    [149] = true,
    [153] = true,
    [157] = true,
    [161] = true,
    [165] = true,
}