-- Put the packages you want to run in the same VM
local PackagesList = {
    "luarun",
    "envmod",
    "another-package"
}

-- Let's require all packages..
local function loadPackages()
    Package.Log( "Loading packages..." )

    local iCount = 0
    local fExecutionTime = os.clock()

    for _, sPackage in ipairs( PackagesList ) do
        if not File.Exists( "Packages/" .. sPackage ) then
            Package.Warn( "\t- \"" .. sPackage .. "\" not found!" )
            goto continue
        end

        Package.RequirePackage( sPackage )
        Package.Log( "\t- \"" .. sPackage  .. "\" loaded" )

        iCount = ( iCount + 1 )
        ::continue::
    end

    Package.Log( "Successfully loaded " .. iCount .. " package(s)\n" .. string.rep( "-", 31 ) .. "> Took " .. ( os.clock() - fExecutionTime ) .. "s" )
end

Package.Subscribe( "Load", loadPackages )