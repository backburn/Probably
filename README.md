## Probably for Cataclysm
Probably is an event, module and timer based rotation optimization add-on for World of Warcraft Cataclysm.

Probably is licensed under a modified BSD license.

## Notes
**State Modifiers**

    modifier.cooldowns
    modifier.multitarget
    modifier.enemies > 3
    modifier.shift
    modifier.control
    modifier.alt
    modifier.taunt

## DSL Conditions

**Unit Resources**
	ProbablyEngine.condition.register("focus", function(target, spell)
	ProbablyEngine.condition.register("holypower", function(target, spell)
	ProbablyEngine.condition.register("shadoworbs", function(target, spell)
	ProbablyEngine.condition.register("energy", function(target, spell)
	ProbablyEngine.condition.register("timetomax", function(target, spell)
	ProbablyEngine.condition.register("tomax", function(target, spell)
	ProbablyEngine.condition.register("rage", function(target, spell)
	ProbablyEngine.condition.register("chi", function(target, spell)
	ProbablyEngine.condition.register("demonicfury", function(target, spell)
	ProbablyEngine.condition.register("embers", function(target, spell)
	ProbablyEngine.condition.register("soulshards", function(target, spell
	ProbablyEngine.condition.register("combopoints", function()
	ProbablyEngine.condition.register("runicpower", function(target, spell)
	ProbablyEngine.condition.register("runes.count", function(target, rune)
	ProbablyEngine.condition.register("runes.depleted", function(target, spell)
	ProbablyEngine.condition.register("runes", function(target, rune)
	ProbablyEngine.condition.register("health", function(target, spell)
	ProbablyEngine.condition.register("mana", function(target, spell)
	ProbablyEngine.condition.register("raid.health", function()
	
**Unit Form/Stance**
	ProbablyEngine.condition.register("stance", function(target, spell)
	ProbablyEngine.condition.register("form", function(target, spell)
	ProbablyEngine.condition.register("seal", function(target, spell)

**Buff/Debuff Functions**
	ProbablyEngine.condition.register("buff", function(target, spell)
	ProbablyEngine.condition.register("buff.any", function(target, spell)
	ProbablyEngine.condition.register("buff.count", function(target, spell)
	ProbablyEngine.condition.register("debuff", function(target, spell)
	ProbablyEngine.condition.register("debuff.any", function(target, spell)
	ProbablyEngine.condition.register("debuff.count", function(target, spell)
	ProbablyEngine.condition.register("debuff.duration", function(target, spell)
	ProbablyEngine.condition.register("buff.duration", function(target, spell)

**Class Specific Functions**
	ProbablyEngine.condition.register("balance.sun", function(target, spell)
	ProbablyEngine.condition.register("balance.moon", function(target, spell)
	ProbablyEngine.condition.register("totem", function(target, totem)
ProbablyEngine.condition.register("totem.duration", function(target, totem)
ProbablyEngine.condition.register("mushrooms", function ()

**Positioning and Movement**
	ProbablyEngine.condition.register("behind", function(target, spell)
	ProbablyEngine.condition.register("infront", function(target, spell)

**Unit Status**
	ProbablyEngine.condition.register("range", function(target, range)
	ProbablyEngine.condition.register("level", function(target, range)
	ProbablyEngine.condition.register("combat", function(target, range)
	ProbablyEngine.condition.register("alive", function(target, spell)
	ProbablyEngine.condition.register('dead', function (target)
	ProbablyEngine.condition.register('swimming', function ()
	ProbablyEngine.condition.register("target", function(target, spell)
	ProbablyEngine.condition.register("player", function(target, spell)
	ProbablyEngine.condition.register("isPlayer", function (target)
	ProbablyEngine.condition.register("exists", function(target)
	ProbablyEngine.condition.register("hashero", function(unit, spell)
	ProbablyEngine.condition.register("charmed", function(unit, _)
	ProbablyEngine.condition.register("modifier.player", function()
	ProbablyEngine.condition.register("classification", function (target, spell)
	ProbablyEngine.condition.register('boss', function (target, spell)
	ProbablyEngine.condition.register("id", function(target, id)
	ProbablyEngine.condition.register("toggle", function(toggle, spell)
	ProbablyEngine.condition.register("threat", function(target, spell)
	ProbablyEngine.condition.register("moving", function(target, spell)
	ProbablyEngine.condition.register("friend", function(target, spell)
	ProbablyEngine.condition.register("enemy", function(target, spell)
	ProbablyEngine.condition.register("time", function(target, range)
	ProbablyEngine.condition.register("deathin", function(target, range)
	ProbablyEngine.condition.register("ttd", function(target, range)
	ProbablyEngine.condition.register("role", function(target, role)
	ProbablyEngine.condition.register("name", function (target, expectedName)
	ProbablyEngine.condition.register("creatureType", function (target, expectedType)
	ProbablyEngine.condition.register("class", function (target, expectedClass)
	
**Keybinds**
	ProbablyEngine.condition.register("modifier.shift", function()
	ProbablyEngine.condition.register("modifier.control", function()
	ProbablyEngine.condition.register("modifier.alt", function()
	ProbablyEngine.condition.register("modifier.lshift", function()
	ProbablyEngine.condition.register("modifier.lcontrol", function()
	ProbablyEngine.condition.register("modifier.lalt", function()
	ProbablyEngine.condition.register("modifier.rshift", function()
	ProbablyEngine.condition.register("modifier.rcontrol", function()
	ProbablyEngine.condition.register("modifier.ralt", function()

**Toggle Buttons**
	ProbablyEngine.condition.register("modifier.multitarget", function()
	ProbablyEngine.condition.register("modifier.cooldowns", function()
	ProbablyEngine.condition.register("modifier.cooldown", function()
	ProbablyEngine.condition.register("modifier.toggle", function(toggle)
	ProbablyEngine.condition.register("modifier.taunt", function()

**Spells**
	ProbablyEngine.condition.register("spell.cooldown", function(target, spell)
	ProbablyEngine.condition.register("spell.recharge", function(target, spell)
	ProbablyEngine.condition.register("spell.usable", function(target, spell)
	ProbablyEngine.condition.register("spell.exists", function(target, spell)
	ProbablyEngine.condition.register("spell.casted", function(target, spell)
	ProbablyEngine.condition.register("spell.charges", function(target, spell)
	ProbablyEngine.condition.register("spell.cd", function(target, spell)
	ProbablyEngine.condition.register("spell.range", function(target, spell)
	
**Interrupts and Casting**
	ProbablyEngine.condition.register('casting.time', function(target, spell)
	ProbablyEngine.condition.register('casting.delta', function(target, spell)
	ProbablyEngine.condition.register('channeling', function (target, spell)
	ProbablyEngine.condition.register("casting", function(target, spell)
	ProbablyEngine.condition.register('interruptsAt', function (target, spell)
	ProbablyEngine.condition.register('interruptAt', function (target, spell)
	ProbablyEngine.condition.register("modifier.interrupts", function()
	ProbablyEngine.condition.register("modifier.interrupt", function()
	ProbablyEngine.condition.register("modifier.last", function(target, spell)
	
**Misc**
	ProbablyEngine.condition.register("dispellable", function(target, spell)
	ProbablyEngine.condition.register("disarmable", function(target, spell)
	ProbablyEngine.condition.register("modifier.enemies", function()
	ProbablyEngine.condition.register("enchant.mainhand", function()
	ProbablyEngine.condition.register("enchant.offhand", function()
	ProbablyEngine.condition.register("glyph", function(target, spell)
	ProbablyEngine.condition.register("modifier.party", function()
	ProbablyEngine.condition.register("modifier.raid", function()
	ProbablyEngine.condition.register("modifier.members", function()
	ProbablyEngine.condition.register("falling", function()
	ProbablyEngine.condition.register("modifier.timeout", function(_, spell, time)

