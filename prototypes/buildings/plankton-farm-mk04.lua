RECIPE {
    type = "recipe",
    name = "plankton-farm-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "plankton-farm-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "plankton-farm-mk04", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "plankton-farm-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/plankton-farm-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "b",
    place_result = "plankton-farm-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "plankton-farm-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/plankton-farm-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "plankton-farm-mk04"},
    fast_replaceable_group = "plankton-farm",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"plankton"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "950kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/left.png",
                    width = 128,
                    height = 243,
                    line_length = 16,
                    frame_count = 126,
                    animation_speed = 0.4,
                    shift = {-1.54, -0.3}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/left-mask.png",
                    width = 128,
                    height = 243,
                    line_length = 16,
                    frame_count = 126,
                    animation_speed = 0.4,
                    shift = {-1.54, -0.3},
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/right.png",
                    width = 113,
                    height = 243,
                    line_length = 16,
                    frame_count = 126,
                    animation_speed = 0.4,
                    shift = {2.22, -0.3}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/right-mask.png",
                    width = 113,
                    height = 243,
                    line_length = 16,
                    frame_count = 126,
                    animation_speed = 0.4,
                    shift = {2.22, -0.3},
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                {flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {
                {flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {
                {flow_direction = "input", position = {-1.0, -3.0}, direction = defines.direction.north}
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/plankton-farm.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/plankton-farm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
