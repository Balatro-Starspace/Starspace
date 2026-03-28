STAR_UTIL = {}

assert(SMODS.load_file('lib/definitions.lua'))()
assert(SMODS.load_file('lib/utilities.lua'))()
assert(SMODS.load_file('lib/hooks.lua'))()
assert(SMODS.load_file('lib/ui.lua'))()

-- placeholder atlas
SMODS.Atlas {
  key = "placeholder",
  path = "placeholder.png",
  px = 71, py = 95
}

-- joker atlas
SMODS.Atlas {
  key = "jokers",
  path = "jokers.png",
  px = 71, py = 95
}

STAR_UTIL.load_items(STAR_UTIL.enabled_jokers, 'content/jokers')
STAR_UTIL.load_items(STAR_UTIL.enabled_consumables, 'content/consumables')
STAR_UTIL.load_items(STAR_UTIL.enabled_hands, 'content/pokerhands')
STAR_UTIL.load_items(STAR_UTIL.enabled_modifiers, 'content/modifiers')
STAR_UTIL.load_items(STAR_UTIL.enabled_quips, 'content/quips')
STAR_UTIL.load_items(STAR_UTIL.enabled_vouchers, 'content/vouchers')
