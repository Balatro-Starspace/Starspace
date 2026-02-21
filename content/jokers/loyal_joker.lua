SMODS.Joker {
  key = "loyal_joker",
  atlas = "jokers",
  pos = { x = 0, y = 9 },
  config = { extra = {
  chips = 100
  } },
  rarity = 1,
  cost = 3,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {
      card.ability.extra.chips,
    } }
  end,

  calculate = function(self, card, context)
    if context.joker_main and context.scoring_name == "High Card" then
      return {
        chips = card.ability.extra.chips
      }
    end
  end
}
