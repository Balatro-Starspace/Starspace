SMODS.Joker {
  key = "gay_ass_legendary",
  atlas = "jokers",
  pos = { x = 4, y = 1 },
  soul_pos = { x = 5, y = 1 },
  config = { extra = {
    chips = 1,
    scale = 1,
    type = "star_flash"
  } },
  rarity = 4,
  cost = 20,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,
  
  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.chips,card.ability.extra.scale
      },
    }
  end,

  calculate = function(self, card, context)
    if context.joker_main then
      return { xchips = card.ability.extra.chips }
      end
    if context.before then
    if next(context.poker_hands[card.ability.extra.type]) then
        SMODS.scale_card(card, {
            ref_table = card.ability.extra,
            ref_value = "chips",
          scalar_value = "scale",
            scaling_message = {
            message = "X"..card.ability.extra.chips.." Chips",
            colour = G.C.CHIPS
            }
          })
        end
      end
    end
}