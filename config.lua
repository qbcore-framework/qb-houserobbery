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
                ["coords"] = vector3(505.03, -1702.98, -14.16),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.0,
                ["boxy"] = 1.0,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(501.15, -1695.96, -14.16),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.6,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(497.73, -1698.41, -13.56),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.6,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(508.23, -1693.17, -14.16),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.4,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(501.59, -1689.38, -14.16),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.0,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(493.01, -1690.98, -14.16),
              ["heading"] = 90.0,
              ["boxx"] = 1.50,
              ["boxy"] = 2.50,
              ["text"] = "Take the TV"
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
                ["coords"] = vector3(50.73, -36.65, 29.74),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(46.89, -29.74, 29.74),
                ["heading"] = 359.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.6,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(43.47, -32.19, 30.24),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.60,
                ["boxy"] = 1.15,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(53.94, -26.97, 29.74),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(49.97, -23.1, 29.74),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.80,
                ["boxy"] = 0.80,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "microwave",
              ["PropName"] = "prop_micro_01",
              ["coords"] = vector3(46.06, -30.2, 29.74),
              ["heading"] = 359.0,
              ["boxx"] = 0.80,
              ["boxy"] = 0.60,
              ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(-780.17, 453.66, 56.23),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.6,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-784.0, 460.54, 56.23),
                ["heading"] = 359.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.6,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-787.49, 457.95, 56.73),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 1.2,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-776.96, 463.28, 56.23),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-780.89, 467.17, 56.23),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.6,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(-788.68, 458.01, 56.23),
              ["heading"] = 0.0,
              ["boxx"] = 0.8,
              ["boxy"] = 1.0,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "television",
                ["PropName"] = "Prop_TV_Flat_01",
                ["coords"] = vector3(-792.0, 465.47, 56.23),
                ["heading"] = 0.0,
                ["boxx"] = 2.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the TV"
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
                ["coords"] = vector3(-532.35, 812.86, 153.57),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-536.2, 819.71, 153.57),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-539.63, 817.23, 154.07),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-529.14, 822.51, 153.57),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-533.15, 826.37, 153.57),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(-540.86, 817.21, 153.57),
              ["heading"] = 0.0,
              ["boxx"] = 0.8,
              ["boxy"] = 1.0,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(-536.94, 819.31, 153.57),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1221.82, -724.81, 17.12),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 2.0,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1229.44, -726.72, 17.8),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.1,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1240.73, -723.92, 18.56),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.8,
                ["boxy"] = 0.8,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1225.86, -732.85, 21.7),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1231.06, -737.05, 21.7),
                ["heading"] = 270.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.6,
                ["boxy"] = 1.0,
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
              ["text"] = "Take the Art Piece"
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
                ["text"] = "Take the Art Piece"
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
                ["coords"] = vector3(813.07, -169.33, 31.93),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.80,
                ["boxy"] = 0.80,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(809.2, -162.42, 31.93),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(805.82, -164.96, 32.43),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(816.33, -159.67, 31.93),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(812.44, -155.77, 31.93),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(801.28, -157.44, 31.93),
              ["heading"] = 0.0,
              ["boxx"] = 2.8,
              ["boxy"] = 0.6,
              ["text"] = "Take the TV"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(808.51, -162.89, 31.93),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(10.01, -15.19, 26.36),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(6.1, -8.25, 26.36),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(2.73, -10.83, 26.36),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(13.26, -5.5, 26.36),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(9.26, -1.64, 26.36),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(1.54, -10.82, 26.36),
              ["heading"] = 90.0,
              ["boxx"] = 1.0,
              ["boxy"] = 0.7,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(5.36, -8.75, 26.36),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1014.68, -428.97, 21.4),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1010.77, -422.17, 21.4),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1007.39, -424.67, 21.4),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1017.88, -419.4, 21.4),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1013.86, -415.52, 21.4),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(1006.11, -424.65, 21.4),
              ["heading"] = 90.0,
              ["boxx"] = 1.2,
              ["boxy"] = 0.7,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1010.1, -422.58, 21.4),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(-686.76, 512.72, 69.69),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.9,
                ["boxy"] = 0.9,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-679.12, 510.71, 70.37),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.05,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-667.9, 513.56, 70.93),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-682.74, 504.59, 74.27),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-677.51, 500.5, 74.27),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 1.0,
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
              ["text"] = "Take the Art Piece"
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
                ["text"] = "Take the Art Piece"
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
                ["coords"] = vector3(-1315.93, 449.44, 57.13),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.9,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1308.32, 447.46, 57.81),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.2,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-1297.05, 450.35, 58.37),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-1311.95, 441.37, 61.71),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1306.71, 437.25, 61.71),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.8,
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
              ["text"] = "Take the TV"
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
                ["text"] = "Take the Art Piece"
            },
        },
    },
    ["house11"] = {
        coords = vector4(-1413.59, 462.1, 109.2, 164.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1421.39, 462.65, 65.37),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.9,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1413.76, 460.67, 66.05),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.2,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-1402.61, 463.57, 66.61),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-1417.45, 454.58, 69.95),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-1412.17, 450.55, 69.95),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
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
              ["text"] = "Take the TV"
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
                ["text"] = "Take the Art Piece"
            },
        },
    },
    ["house12"] = {
        coords = vector4(-2015.01, 499.84, 107.17, 85.5),
        ["opened"] = false,
        ["tier"] = 2,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2022.81, 500.4, 63.34),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.9,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2015.17, 498.4, 64.02),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.1,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-2003.94, 501.29, 64.58),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-2018.79, 492.32, 67.92),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-2013.57, 488.28, 67.92),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "artpiece",
              ["PropName"] = "ex_mp_h_acc_artwallm_02",
              ["coords"] = vector3(-2020.88, 497.57, 68.42),
              ["heading"] = 0.0,
              ["boxx"] = 1.4,
              ["boxy"] = 0.4,
              ["text"] = "Take the Art Piece"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "artpiece",
                ["PropName"] = "apa_p_h_acc_artwalll_02",
                ["coords"] = vector3(-2022.85, 505.9724, 69.885),
                ["heading"] = 0.0,
                ["boxx"] = 0.75,
                ["boxy"] = 2.75,
                ["text"] = "Take the Art Piece"
            },
        },
    },
    ["house13"] = {
        coords = vector4(329.37, -1845.84, 27.74, 236.5),
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = vector3(333.62, -1851.57, -16.2),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(329.76, -1844.62, -16.2),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.4,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(326.36, -1847.13, -15.7),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(336.87, -1841.85, -16.2),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(332.97, -1837.95, -16.2),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(325.05, -1847.18, -16.2),
              ["heading"] = 90.0,
              ["boxx"] = 1.2,
              ["boxy"] = 0.7,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(329.06, -1845.05, -16.2),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.6,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(486.13, -1720.65, -13.0),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.6,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(486.62, -1715.39, -13.74),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(497.15, -1710.11, -14.24),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(493.19, -1706.25, -14.24),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "musicequipment",
              ["PropName"] = "prop_tapeplayer_01",
              ["coords"] = vector3(485.42, -1715.45, -14.24),
              ["heading"] = 90.0,
              ["boxx"] = 1.0,
              ["boxy"] = 0.7,
              ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(489.31, -1713.35, -14.24),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1316.37, -1703.03, 14.28),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1312.49, -1696.13, 14.28),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1309.1, -1698.65, 14.78),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1319.69, -1693.35, 14.28),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1315.61, -1689.49, 14.28),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(1304.51, -1691.15, 14.28),
              ["heading"] = 0.0,
              ["boxx"] = 3.0,
              ["boxy"] = 0.7,
              ["text"] = "Take the TV"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1311.81, -1696.57, 14.28),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1383.45, -1520.56, 14.49),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1379.55, -1513.66, 14.49),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.6,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1376.23, -1516.2, 14.49),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1386.74, -1510.89, 14.49),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1382.73, -1507.03, 14.49),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
		['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(1371.65, -1508.74, 14.49),
              ["heading"] = 0.0,
              ["boxx"] = 3,
              ["boxy"] = 0.7,
              ["text"] = "Take the TV"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1378.88, -1514.15, 14.49),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1318.74, -1738.86, 10.76),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1314.87, -1731.93, 10.76),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1311.45, -1734.46, 11.26),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1321.99, -1729.16, 10.76),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1318.05, -1725.28, 10.76),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "musicequipment",
                ["PropName"] = "prop_tapeplayer_01",
                ["coords"] = vector3(1310.25, -1734.49, 10.76),
                ["heading"] = 90.0,
                ["boxx"] = 1.0,
                ["boxy"] = 0.7,
                ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1314.15, -1732.37, 10.76),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Take the Microwave"
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
                ["coords"] = vector3(1304.69, -1757.97, 10.33),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1300.77, -1751.11, 10.33),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.4,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(1297.38, -1753.61, 10.83),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(1307.87, -1748.36, 10.33),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(1303.92, -1744.5, 10.33),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "musicequipment",
                ["PropName"] = "prop_tapeplayer_01",
                ["coords"] = vector3(1296.19, -1753.68, 10.33),
                ["heading"] = 90.0,
                ["boxx"] = 1.0,
                ["boxy"] = 0.7,
                ["text"] = "Take the Music Equipment"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "microwave",
                ["PropName"] = "prop_micro_01",
                ["coords"] = vector3(1300.1, -1751.57, 10.33),
                ["heading"] = 0.0,
                ["boxx"] = 0.8,
                ["boxy"] = 0.8,
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
                ["coords"] = vector3(-453.99, 686.91, 109.29),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.9,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-446.35, 684.92, 109.96),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 3.4,
                ["boxy"] = 0.7,
                ["text"] = "Search cabin"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = vector3(-435.17, 687.8, 110.53),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.7,
                ["boxy"] = 0.7,
                ["text"] = "Search kitchen cabins"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = vector3(-449.96, 678.83, 113.87),
                ["heading"] = 0.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.2,
                ["boxy"] = 0.8,
                ["text"] = "Search chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = vector3(-444.78, 674.77, 113.87),
                ["heading"] = 90.0,
                ["searched"] = false,
                ["isBusy"] = false,
                ["boxx"] = 1.5,
                ["boxy"] = 0.8,
                ["text"] = "Search night stand"
            },
        },
        ['propitem'] = {
            [1] = {
              ["stolen"] = false,
              ["isBusy"] = false,
              ["itemname"] = "television",
              ["PropName"] = "Prop_TV_Flat_01",
              ["coords"] = vector3(-447.65, 674.66, 109.97),
              ["heading"] = 90.0,
              ["boxx"] = 3.3,
              ["boxy"] = 0.8,
              ["text"] = "Take the TV"
            },
            [2] = {
                ["stolen"] = false,
                ["isBusy"] = false,
                ["itemname"] = "pcequipment",
                ["PropName"] = "prop_laptop_01a",
                ["coords"] = vector3(-453.33, 684.42, 113.87),
                ["heading"] = 0.0,
                ["boxx"] = 2.9,
                ["boxy"] = 2.1,
                ["text"] = "Take the Laptop"
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