if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/explosion/brick-kiln-explosion")
require("prototypes/entity/brick-kiln")
require("prototypes/item/brick-kiln")
require("prototypes/technology/kiln-smelting")

require("prototypes/explosion/electric-kiln-explosion")
require("prototypes/entity/electric-kiln")
require("prototypes/item/electric-kiln")

require("prototypes/item/coke")
