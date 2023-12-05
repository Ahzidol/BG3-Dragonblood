-- Trigger when Gameplay starts
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, isEditorMode)
    -- Get Host Character
    local hostCharacter = Osi.GetHostCharacter()

    -- Check if has 'AHZ_DRAGONBLOOD' tag
    if Osi.IsTagged(hostCharacter, "ea49e482-d15a-48ce-93e0-3029695f624a") == 1 then
        
        -- Check if has 'REALLY_DRAGONBORN' tag
        if Osi.IsTagged(hostCharacter, "39783f17-8484-46a6-aa3b-f3d51122e5f3") == 1 then
            -- Remove Tag
            Osi.ClearTag(Osi.GetHostCharacter(), "39783f17-8484-46a6-aa3b-f3d51122e5f3")

            -- Log
            _P("[AHZ_Dragonblood] Removed REALLY_DRAGONBORN tag.")
        end 

    end

end)