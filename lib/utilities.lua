-- Joker table
STAR_UTIL.enabled_jokers = {
}

-- Consumables table
STAR_UTIL.enabled_consumables = {
}

-- Poker hands table
STAR_UTIL.enabled_hands = {
}

-- Modifiers table
STAR_UTIL.enabled_modifiers = {
}

-- Quips table
STAR_UTIL.enabled_quips = {
}

-- Vouchers table
STAR_UTIL.enabled_vouchers = {
}

-- custom colors
STAR_UTIL.colors = {
}
loc_colour()
for i, v in pairs(STAR_UTIL.colors) do
  G.ARGS.LOC_COLOURS["star_" .. i] = v
end

-- custom pronoun sets
if next(SMODS.find_mod("cardpronouns")) then
  CardPronouns.Pronoun {
    colour = HEX("80407E"),
    text_colour = G.C.WHITE,
    pronoun_table = { "She", "It" },
    in_pool = function()
      return true
    end,
    key = "she_it"
  }
  CardPronouns.Pronoun {
    colour = HEX("405780"),
    text_colour = G.C.WHITE,
    pronoun_table = { "He", "It" },
    in_pool = function()
      return true
    end,
    key = "he_it"
  }
end

-- load items function
function STAR_UTIL.load_items(names, path)
  for i = 1, #names do
    assert(SMODS.load_file(path .. '/' .. names[i] .. '.lua'))()
  end
end
