Config = {}

Config.MinZOffset = 45

Config.MinimumHouseRobberyPolice = 0

Config.MinimumTime = 22
Config.MaximumTime = 5

Config.Rewards = {
    [1] = {
        ["cabin"] = {"plastic", "diamond_ring", "goldchain", "weed_skunk", "pistol_ammo", "cryptostick", "weapon_golfclub"},
        ["kitchen"] = {"tosti", "sandwich", "goldchain"},
        ["chest"] = {"plastic", "rolex", "diamond_ring", "goldchain", "weed_skunk", "pistol_ammo", "cryptostick", "weapon_combatpistol"}
    }
}

Config.Houses = {
    ["grovestreet1"] = {
        ["coords"] = {
            ["x"] = 500.75,
            ["y"] = -1697.16,
            ["z"] = 29.78,
            ["h"] = 326.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 4.15, ["y"] = 7.82, ["z"] = 1.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.95, ["y"] = 9.34, ["z"] = 1.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = -1.03, ["y"] = 0.78, ["z"] = 1.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 0.94, ["y"] = 1.24, ["z"] = 1.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 6.19, ["y"] = 3.35, ["z"] = 1.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    }, -- Need to redo furniture coords from here down using /gethroffset
    ["geilhuisje"] = {
        ["coords"] = {
            ["x"] = 46.46,
            ["y"] = -30.96,
            ["z"] = 73.68,
            ["h"] = 229.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["picperfectdrive"] = {
        ["coords"] = {
            ["x"] = -784.45,
            ["y"] = 459.3,
            ["z"] = 100.17,
            ["h"] = 229.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["needasniks"] = {
        ["coords"] = {
            ["x"] = -536.63,
            ["y"] = 818.51,
            ["z"] = 197.51,
            ["h"] = 229.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["12345"] = {
        ["coords"] = {
            ["x"] = 1229.64,
            ["y"] = -725.33,
            ["z"] = 60.95,
            ["h"] = 97.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["12sdgsd345"] = {
        ["coords"] = {
            ["x"] = 808.83,
            ["y"] = -163.65,
            ["z"] = 75.87,
            ["h"] = 331.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house1"] = {
        ["coords"] = {["x"] = 5.76, ["y"] = -9.49, ["z"] = 70.3, ["h"] = 159.5},
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house2"] = { -- Moved 28-1-20
        ["coords"] = {
            ["x"] = 1010.41,
            ["y"] = -423.39,
            ["z"] = 65.34,
            ["h"] = 133.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house3"] = { -- Moved 28-1-2020
        ["coords"] = {
            ["x"] = -678.96,
            ["y"] = 512.12,
            ["z"] = 113.52,
            ["h"] = 18.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house4"] = {
        ["coords"] = {
            ["x"] = -1308.13,
            ["y"] = 448.89,
            ["z"] = 100.96,
            ["h"] = 172.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house5"] = {
        ["coords"] = {
            ["x"] = -1413.59,
            ["y"] = 462.1,
            ["z"] = 109.2,
            ["h"] = 164.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house6"] = {
        ["coords"] = {
            ["x"] = -2015.01,
            ["y"] = 499.84,
            ["z"] = 107.17,
            ["h"] = 85.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house7"] = {
        ["coords"] = {
            ["x"] = 329.37,
            ["y"] = -1845.84,
            ["z"] = 27.74,
            ["h"] = 236.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house8"] = {
        ["coords"] = {
            ["x"] = 489.64,
            ["y"] = -1714.1,
            ["z"] = 29.7,
            ["h"] = 49.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house9"] = {
        ["coords"] = {
            ["x"] = 1312.14,
            ["y"] = -1697.35,
            ["z"] = 58.22,
            ["h"] = 11.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house10"] = {
        ["coords"] = {
            ["x"] = 1379.2,
            ["y"] = -1514.89,
            ["z"] = 58.43,
            ["h"] = 30.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house11"] = {
        ["coords"] = {
            ["x"] = -246.14,
            ["y"] = 6414.11,
            ["z"] = 31.46,
            ["h"] = 310.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["house12"] = {
        ["coords"] = {
            ["x"] = -407.22,
            ["y"] = 6313.92,
            ["z"] = 28.94,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["sandyhouse1"] = {
        ["coords"] = {
            ["x"] = 1857.66,
            ["y"] = 3854.69,
            ["z"] = 33.10231,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["sandyhouse2"] = {
        ["coords"] = {
            ["x"] = 1435.43,
            ["y"] = 3657.10,
            ["z"] = 34.40128,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["sandyhouse3"] = {
        ["coords"] = {
            ["x"] = 1733.61,
            ["y"] = 3895.35,
            ["z"] = 35.55904,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["grapeseed1"] = {
        ["coords"] = {
            ["x"] = 1725.4,
            ["y"] = 4642.52,
            ["z"] = 43.87549,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["grapeseed2"] = {
        ["coords"] = {
            ["x"] = 2016.98,
            ["y"] = 4987.78,
            ["z"] = 42.09826,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["paletohouse1"] = {
        ["coords"] = {
            ["x"] = 31.225,
            ["y"] = 6596.86,
            ["z"] = 32.82224,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["paletohouse2"] = {
        ["coords"] = {
            ["x"] = -130.78,
            ["y"] = 6551.86,
            ["z"] = 29.87277,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["paletohouse3"] = {
        ["coords"] = {
            ["x"] = -227.246,
            ["y"] = 6377.25,
            ["z"] = 31.75931,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    },
    ["paletohouse4"] = {
        ["coords"] = {
            ["x"] = -366.56,
            ["y"] = 6214.13,
            ["z"] = 31.84225,
            ["h"] = 41.5
        },
        ["opened"] = false,
        ["tier"] = 1,
        ["furniture"] = {
            [1] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 3.1, ["y"] = -4.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [2] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = -3.5, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Cabinet"
            },
            [3] = {
                ["type"] = "kitchen",
                ["coords"] = {["x"] = 0.9, ["y"] = -6.3, ["z"] = 2.5},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search through the kitchen cabinets"
            },
            [4] = {
                ["type"] = "chest",
                ["coords"] = {["x"] = 9.3, ["y"] = -1.3, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Search Chest"
            },
            [5] = {
                ["type"] = "cabin",
                ["coords"] = {["x"] = 5.85, ["y"] = 2.6, ["z"] = 2.0},
                ["searched"] = false,
                ["isBusy"] = false,
                ["text"] = "Night Stand Cabinet"
            }
        }
    }
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
    [132] = true
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
    [165] = true
}
