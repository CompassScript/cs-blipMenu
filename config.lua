Config = {}

Config.DefaultBlip = true --if it is true then all blips are going to be on as default but just for first time.
Config.Blips = {
    ["clothes"] = {
        name = "Clothes Shop",
        icon = "fas fa-tshirt",
        ingame = {
            coords = {
                vector3(72.3, -1399.1, 28.4),
                vector3(-708.71, -152.13, 36.4),
                vector3(-165.15, -302.49, 38.6),
                vector3(428.7, -800.1, 28.5),
                vector3(-829.4, -1073.7, 10.3),
                vector3(-1449.16, -238.35, 48.8),
                vector3(11.6, 6514.2, 30.9),
                vector3(122.98, -222.27, 53.5),
                vector3(1696.3, 4829.3, 41.1),
                vector3(618.1, 2759.6, 41.1),
                vector3(1190.6, 2713.4, 37.2),
                vector3(-1193.4, -772.3, 16.3),
                vector3(-3172.5, 1048.1, 19.9),
                vector3(-1108.4, 2708.9, 18.1),
                vector3(300.60162353516, -597.76068115234, 42.18409576416),
                vector3(461.47720336914, -998.05444335938, 30.201751708984),
                vector3(-1622.6466064453, -1034.0192871094, 13.145475387573),
                vector3(1861.1047363281, 3689.2331542969, 34.276859283447),
                vector3(1834.5977783203, 3690.5405273438, 34.270645141602),
                vector3(1742.1407470703, 2481.5856933594, 45.740657806396),
                vector3(516.8916015625, 4823.5693359375, -66.18879699707)
            },
            color = 47,
            scale = 0.7,
            blip = 73
        }
    },
    ["barber"] = {
        name = "Barber",
        icon = "fas fa-cut",
        ingame = {
            coords = {
                vector3(-814.3, -183.8, 36.6),
                vector3(136.8, -1708.4, 28.3),
                vector3(-1282.6, -1116.8, 6.0),
                vector3(1931.5, 3729.7, 31.8),
                vector3(1212.8, -472.9, 65.2),
                vector3(-34.31, -154.99, 55.8),
                vector3(-278.1, 6228.5, 30.7)
            },
            color = 47,
            scale = 0.7,
            blip = 71
        }
    },
    ["market"] = {
        name = "Market",
        icon = "fas fa-shopping-basket",
        ingame = {
            coords = {
                vector3(-709.57403564453,-905.34161376953,19.215591430664),
                vector3(28.79131, -1339.31, 29.497),
                vector3(-44.2468, -1750.03, 29.421),
                vector3(-1487.49, -376.744, 40.163),
                vector3(-1220.06, -907.425, 12.326),
                vector3(378.5500, 333.1157, 103.56),
                vector3(1160.152, -315.893, 69.205),
                vector3(1134.422, -984.490, 46.415)
            },
            color = 4,
            scale = 0.5,
            blip = 52
        }
    },
    ["benzinlik"] = {
        name = "Petrol Station",
        icon = "fas fa-oil-can",
        ingame = {
            coords = {
                vector3(289.27,-1267.01,29.45),
                vector3(818.1,-1040.54,26.76),
                vector3(1211.36,-1389.19,35.38),
                vector3(1167.22,-321.45,69.28),
                vector3(642.37,260.39,103.3),
                vector3(2559.1,373.79,108.63),
                vector3(166.83,-1553.26,29.27),
                vector3(-342.5,-1475.09,30.75),
                vector3(1776.34,3327.44,41.44),
                vector3(46.66,2789.41,57.88),
                vector3(265.9,2598.27,44.84),
                vector3(1039.27,2664.23,39.56),
                vector3(1200.68,2655.62,37.86),
                vector3(2561.88,2590.69,38.09),
                vector3(2673.71,3266.88,55.25),
                vector3(1702.81,4917.25,42.23),
                vector3(1706.25,6425.88,32.78),
                vector3(156.4,6628.03,31.84),
                vector3(-92.59,6409.92,31.65),
                vector3(-2544.05,2315.94,33.22),
                vector3(-1818.72,796.68,138.14),
                vector3(-1427.92,-268.1,46.23),
                vector3(-2073.02,-327.4,13.32),
                vector3(-703.0,-916.85,19.22),
                vector3(-531.43,-1221.15,18.46),
                vector3(-49.33,-1760.37,29.44)
            },
            color = 41,
            scale = 0.5,
            blip = 361
        }
    },
    ["tatto"] = {
        name = "Tatto Shop",
        icon = "fas fa-crutch",
        ingame = {
            coords = {
                vector3(1322.6, -1651.9, 51.2),
                vector3(-1153.6, -1425.6, 4.9),
                vector3(322.1, 180.4, 103.5),
                vector3(-3170.0, 1075.0, 20.8),
                vector3(1864.6, 3747.7, 33.0),
                vector3(-293.7, 6200.0, 31.4)
            },
            color = 1,
            scale = 0.7,
            blip = 75
        }
    },
    ["mechanic"] = {
        name = "Mechanic",
        icon = "fas fa-spray-can",
        ingame = {
            coords = {
                vector3(444.3, -1899.1, 28.4),
                vector3(555.3, -1899.1, 28.4),
                vector3(666.3, -1899.1, 28.4),
                vector3(777.3, -1899.1, 28.4)
            },
            color = 3,
            scale = 0.7,
            blip = 73
        }
    },
    ["hotel"] = { --if you change this title, edit client.lua line 55 and 95
        name = "Otel",
        icon = "fas fa-hotel",
        ingame = {
            locations = {
                {
                    coords = vector3(325.9575, -229.920, 54.217),
                    name = "Pink Cage Motel",
                    color = 34,
                    scale = 0.7,
                    blip = 475
                },
                {
                    coords = vector3(491.5, 215.08, 104.76),
                    name = "Vinewood Motel",
                    color = 13,
                    scale = 0.7,
                    blip = 475
                },
                {
                    coords = vector3(-1470.2076416016, -658.68920898438, 29.381471633911),
                    name = "Perrera Motel",
                    color = 11,
                    scale = 0.7,
                    blip = 475
                },
                {
                    coords = vector3(-1327.50, -933.08, 11.36),
                    name = "Vespucci Motel",
                    color = 3,
                    scale = 0.7,
                    blip = 475
                },
                {
                    coords = vector3(-1218.84, -199.776, 39.325),
                    name = "Crastenburg Motel",
                    color = 13,
                    scale = 0.7,
                    blip = 475
                }
            }  
        }
    },
    ["cardealer"] = { --if you change this title, edit client.lua line 55 and 95
        name = "Car Dealer",
        icon = "fas fa-car",
        ingame = {
            locations = {
                {
                    coords = vector3(-54.0337, 73.97715, 71.883),
                    name = "Galeri 1",
                    color = 3,
                    scale = 0.7,
                    blip = 225
                },
                {
                    coords = vector3(-1249.67, -345.357, 37.332),
                    name = "Galeri 2",
                    color = 8,
                    scale = 0.7,
                    blip = 225
                },
                {
                    coords = vector3(-30.86, -1106.64, 26.42),
                    name = "Galeri 3",
                    color = 4,
                    scale = 0.7,
                    blip = 225
                },
                {
                    coords = vector3(-913.74, -226.88, 39.91),
                    name = "Galeri 1",
                    color = 1,
                    scale = 0.7,
                    blip = 225
                }
            }            
        }
    }
}
