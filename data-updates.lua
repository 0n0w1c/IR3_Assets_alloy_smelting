if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

local recipe

require("prototypes/explosion/brick-kiln")
require("prototypes/entity/brick-kiln")
require("prototypes/item/brick-kiln")
require("prototypes/technology/kiln-smelting")

recipe = data.raw["recipe"]["brick-kiln"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/explosion/electric-kiln")
require("prototypes/entity/electric-kiln")
require("prototypes/item/electric-kiln")

recipe = data.raw["recipe"]["electric-kiln"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/item/coke")

recipe = data.raw["recipe"]["coke-from-crushed-coal"]
if recipe then
    recipe.icons = {
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/carbon-crushed.png", shift = { -12, -12 },  scale = 0.4 },
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/graphitic-coke.png", draw_background = true }
    }
end

recipe = data.raw["recipe"]["coke-from-carbon"]
if mods["space-age"] and recipe then
    recipe.icons = {
        { icon = "__space-age__/graphics/icons/carbon.png",                               shift = { -12, -12 },  scale = 0.4 },
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/graphitic-coke.png", draw_background = true }
    }
end

recipe = data.raw["recipe"]["coke"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")

    recipe.icon = nil
    recipe.icon_size = nil
    recipe.icons = {
        {
            icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/graphitic-coke.png",
            icon_size = 64,
        }
    }

    recycling.generate_self_recycling_recipe(recipe)
end
