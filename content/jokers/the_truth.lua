SMODS.Joker {
  key = "the_truth",
  atlas = "jokers",
  pos = { x = 1, y = 9 },
  config = { extra = {
    xmult = 3,
    type = "High Card"
  } },
  rarity = 3,
  cost = 8,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {
      card.ability.extra.xmult,
      localize (card.ability.extra.type, "poker_hands")
    } }
  end,

  calculate = function(self, card, context)
    if context.joker_main and context.scoring_name == card.ability.extra.type then
      return { xmult = card.ability.extra.xmult }
    end
  end
}
