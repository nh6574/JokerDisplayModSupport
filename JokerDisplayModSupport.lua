--- STEAMODDED HEADER
--- MOD_NAME: JokerDisplay Mod Support
--- MOD_ID: JDModSupport
--- MOD_AUTHOR: [nh6574]
--- MOD_DESCRIPTION: Adds JokerDisplay Support for the following mods: | Betmma Jokers | Inscrybed Jokers | Jimbo's New Pack | Joker Evolution | Pampa Joker Pack |
--- PRIORITY: 100000
--- VERSION: 1.0.0

if SMODS.Atlas then
    SMODS.Atlas({
        key = "modicon",
        path = "icon.png",
        px = 32,
        py = 32
    })
end

local path = SMODS.current_mod.path

if _G["JokerDisplay"] then
    local folder_files = NFS.getDirectoryItems(path.. "definitions")
    for _, file in pairs(folder_files) do
        if string.find(file, ".lua") then
            NFS.load(path.. "definitions/"..file)()
        end
    end
end
