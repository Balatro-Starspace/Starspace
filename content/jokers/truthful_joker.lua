SMODS.Joker {
  key = "truthful_joker",
  atlas = "jokers",
  pos = { x = 1, y = 8 },
  config = { extra = {
    handsize = 2,
    triggered = false
  } },
  rarity = 2,
  cost = 5,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {
      card.ability.extra.handsize,
    } }
  end,

  calculate = function(self, card, context)
    -- give handsize when given hand is played
    if context.joker_main and not context.blueprint and not card.ability.extra.triggered then
      if context.scoring_name == "High Card" then
        G.hand:change_size(card.ability.extra.handsize)
        card.ability.extra.triggered = true
        return {
          message = localize { type = "variable", key = "a_handsize", vars = { card.ability.extra.handsize } }
        }
      end
    end

    -- take handsize away
    if context.end_of_round and context.cardarea == G.jokers and card.ability.extra.triggered then
      G.hand:change_size(-card.ability.extra.handsize)
      card.ability.extra.triggered = false
    end
  end
}
