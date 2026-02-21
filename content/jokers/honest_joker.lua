SMODS.Joker {
  key = "honest_joker",
  atlas = "jokers",
  pos = { x = 0, y = 8 },
  config = { extra = {
    mult = 12
  } },
  rarity = 1,
  cost = 3,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {
      card.ability.extra.mult,
    } }
  end,

  calculate = function(self, card, context)
    if context.joker_main and context.scoring_name == "High Card" then
      return {
        mult = card.ability.extra.mult
      }
    end
  end
}
