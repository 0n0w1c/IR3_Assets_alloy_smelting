local entity = data.raw["assembling-machine"]["brick-kiln"]

local SCALE  = 2 / 3

if settings.startup["IR3-brick-kiln-size"].value == "3x3" then
    SCALE                = 3 / 3
    entity.collision_box = {
        { -1.4, -1.4 },
        { 1.4,  1.4 }
    }
    entity.selection_box = {
        { -1.5, -1.5 },
        { 1.5,  1.5 }
    }
end

entity.icon                   = "__IndustrialRevolution3Assets1__/graphics/icons/64/stone-alloy-furnace.png"

entity.corpse                 = "medium-remnants"
entity.dying_explosion        = "brick-kiln-explosion"

entity.damaged_trigger_effect = {
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "iron-particle",
        probability = 0.25,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "stone-particle",
        probability = 0.5,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "wood-particle",
        probability = 0.25,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.graphics_set           = {
    animation = {
        layers = {
            {
                animation_speed = 1,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-alloy-furnace-base.png",
                height = 256,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.359375 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            {
                animation_speed = 1,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-alloy-furnace-shadow.png",
                height = 128,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 1 * SCALE, 0.640625 * SCALE },
                width = 320,
                x = 0,
                y = 0
            }
        }
    },

    working_visualisations = {
        {
            animation = {
                animation_speed = 1,
                blend_mode = "additive",
                draw_as_glow = true,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-working.png",
                frame_count = 30,
                height = 256,
                line_length = 6,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.5 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            fadeout = true
        },
        {
            animation = {
                animation_speed = 1,
                blend_mode = "additive",
                draw_as_glow = false,
                draw_as_light = true,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-floor-glow.png",
                height = 128,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, 1.640625 * SCALE },
                tint = { r = 1, b = 0.45, g = 0, a = 1 },
                width = 192,
                x = 0,
                y = 0
            },
            effect = "flicker",
            fadeout = true,
            light = {
                color = { r = 1, g = 0.45, b = 0, a = 1 },
                intensity = 0.5,
                shift = { 0, 0.75 * SCALE },
                size = 4
            }
        }
    }
}
