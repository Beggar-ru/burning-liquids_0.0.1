local ITEM_BURN_RATE_TOOLTIP = {}
if settings.startup["burning-liquids-item-rate"].value == 1 then
    ITEM_BURN_RATE_TOOLTIP = {"flare-tooltips.item-burn-rate-single", settings.startup["burning-liquids-item-rate"].value}
else
    ITEM_BURN_RATE_TOOLTIP = {"flare-tooltips.item-burn-rate", settings.startup["burning-liquids-item-rate"].value}
end
local FLUID_BURN_RATE_TOOLTIP = {"flare-tooltips.fliud-burn-rate", settings.startup["burning-liquids-fluid-rate"].value}

data:extend({
    {
        type = "furnace",
        name = "burning-liquids",
        icon = "__burning-liquids__/graphics/icon/fire-tower.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "burning-liquids"},
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        drawing_box = {{-0.5, -4.0}, {0.5, 0.5}},
        crafting_categories = {"flaring"},
        crafting_speed = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 8
        },
        energy_usage = "50kW",
        ingredient_count = 1,
        source_inventory_size = 0,
        result_inventory_size = 0,
        animation = {
            filename = "__burning-liquids__/graphics/entity/flare-stack.png",
            priority = "high",
            width = 160,
            height = 160,
            frame_count = 1,
            shift = {1.5, -1.59375}
        },
        working_visualisations = {
            {
                animation = {
                    filename = "__burning-liquids__/graphics/entity/flare-stack-fire.png",
                    priority = "extra-high",
                    frame_count = 29,
                    width = 48,
                    height = 105,
                    shift = {0.0, -5.0},
                    run_mode = "backward"
                },
                light = {intensity = 1, size = 32},
                constant_speed = true
            }
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        working_sound = {
            sound = {filename = "__base__/sound/oil-refinery.ogg"},
            idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
            apparent_volume = 2.5,
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = {
                    north = {
                        filename = "__core__/graphics/empty.png",
                        priority = "extra-high",
                        width = 1,
                        height = 1
                    },
                    east = {
                        filename = "__core__/graphics/empty.png",
                        priority = "extra-high",
                        width = 1,
                        height = 1
                    },
                    south = {
                        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                        priority = "extra-high",
                        width = 64,
                        height = 64,
                        frame_count = 1,
                        shift = util.by_pixel(0, -32),
                        hr_version = {
                            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                            priority = "extra-high",
                            width = 128,
                            height = 128,
                            frame_count = 1,
                            shift = util.by_pixel(0, -32),
                            scale = 0.5
                        }
                    },
                    west = {
                        filename = "__core__/graphics/empty.png",
                        priority = "extra-high",
                        width = 1,
                        height = 1
                    }
                },
                pipe_covers = pipecoverspictures(),
                base_area = settings.startup["burning-liquids-fluid-rate"].value / 10,
                base_level = -1,
                pipe_connections = {
                    {position = {0, -1}}
                }
            }
        },
        pipe_covers = pipecoverspictures()
    }
})

