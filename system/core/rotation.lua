-- ProbablyEngine Rotations - https://probablyengine.com/
-- Released under modified BSD, see attached LICENSE.

local GetClassInfoByID = GetClassInfoByID

ProbablyEngine.rotation = {
  rotations = { },
  oocrotations =  { },
  custom = { },
  ooccustom = { },
  cdesc = { },
  buttons = { },
  specId = { },
  classSpecId = { },
  currentStringComp = "",
  activeRotation = false,
  activeOOCRotation = false,
}

ProbablyEngine.rotation.register_custom = function(specId, _desc, _spellTable, arg1, arg2)

  local _oocrotation, _buttons = false

  if type(arg1) == "table" then
    _oocrotation = arg1
  end
  if type(arg1) == "function" then
    _buttons = arg1
  end
  if type(arg2) == "table" then
    _oocrotation = arg2
  end
  if type(arg2) == "function" then
    _buttons = arg2
  end

  if _oocrotation then
    ProbablyEngine.rotation.ooccustom[specId] = _oocrotation
  end

  if not ProbablyEngine.rotation.custom[specId] then
    ProbablyEngine.rotation.custom[specId] = { }
  end

  table.insert(ProbablyEngine.rotation.custom[specId], {
    desc = _desc,
    spellTable = _spellTable,
    oocrotation = _oocrotation,
    buttons = _buttons,
  })

end

-- Lower memory used, no need in storing rotations for other classes
ProbablyEngine.rotation.auto_unregister = function()
  local classId = select(3, UnitClass("player"))
  for specId,_ in pairs(ProbablyEngine.rotation.rotations) do
    if ProbablyEngine.rotation.classSpecId[specId] ~= classId and specId ~= classId then
      local name = ProbablyEngine.rotation.specId[specId] or GetClassInfoByID(specId)
      ProbablyEngine.debug.print('AutoUnloaded Rotation for ' .. name, 'rotation')
      ProbablyEngine.rotation.classSpecId[specId] = nil
      ProbablyEngine.rotation.specId[specId] = nil
      ProbablyEngine.rotation.rotations[specId] = nil
      ProbablyEngine.rotation.buttons[specId] = nil
    end
  end
  collectgarbage('collect')
end

ProbablyEngine.rotation.add_buttons = function()
  -- Default Buttons
  if ProbablyEngine.rotation.buttons[ProbablyEngine.module.player.specID] then
    ProbablyEngine.rotation.buttons[ProbablyEngine.module.player.specID]()
  end

  -- Custom Buttons
  if ProbablyEngine.rotation.custom[ProbablyEngine.module.player.specID] then
    for _, rotation in pairs(ProbablyEngine.rotation.custom[ProbablyEngine.module.player.specID]) do
      if ProbablyEngine.rotation.currentStringComp == rotation.desc then
        if rotation.buttons then
          rotation.buttons()
        end
      end
    end
  end
end
