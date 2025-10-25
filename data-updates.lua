if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/entity/brick-kiln")
require("prototypes/item/brick-kiln")
require("prototypes/technology/kiln-smelting")

require("prototypes/entity/electric-kiln")
require("prototypes/item/electric-kiln")

require("prototypes/item/coke")
