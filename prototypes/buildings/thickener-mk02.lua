local pipes = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/thickener/bottom.png",
        priority = "extra-high",
        width = 237,
        height = 260
    }
}

RECIPE {
    type = "recipe",
    name = "thickener-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "thickener-mk01",   amount = 1},
        {type = "item", name = "engine-unit",      amount = 2},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "advanced-circuit", amount = 10}
    },
    results = {
        {type = "item", name = "thickener-mk02", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "thickener-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "b",
    place_result = "thickener-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "thickener-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "thickener-mk02"},
    fast_replaceable_group = "thickener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"thickener"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "900kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom.png",
                    width = 237,
                    height = 132,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 1,
                    shift = {0.19, 1.42}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom-mask.png",
                    width = 237,
                    height = 132,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 1,
                    shift = {0.19, 1.42},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top.png",
                    width = 237,
                    height = 128,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 1,
                    shift = {0.19, -2.640}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top-mask.png",
                    width = 237,
                    height = 128,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 1,
                    shift = {0.19, -2.640},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -1.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, 1.0}, direction = defines.direction.east}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
