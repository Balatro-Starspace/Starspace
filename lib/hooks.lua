-- add a SELECT button to consumables if Shoplift is redeemed
local uasb_ref = G.UIDEF.use_and_sell_buttons
function G.UIDEF.use_and_sell_buttons(card)
  if (card.area == G.pack_cards and G.pack_cards) and card.ability.consumeable then
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED and next(SMODS.find_card("v_star_shoplift")) then
      return {
        n = G.UIT.ROOT,
        config = { padding = -0.1, colour = G.C.CLEAR },
        nodes = {
          {
            n = G.UIT.R,
            config = {
              ref_table = card,
              r = 0.08,
              padding = 0.1,
              align = "bm",
              minw = 0.5 * card.T.w - 0.15,
              minh = 0.7 * card.T.h,
              maxw = 0.7 * card.T.w - 0.15,
              hover = true,
              shadow = true,
              colour = G.C.UI.BACKGROUND_INACTIVE,
              one_press = true,
              button = "use_card",
              func = "can_use_consumeable"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("b_use"),
                  colour = G.C.UI.TEXT_LIGHT,
                  scale = 0.55,
                  shadow = true
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              ref_table = card,
              r = 0.08,
              padding = 0.1,
              align = "bm",
              minw = 0.5 * card.T.w - 0.15,
              minh = 0.1 * card.T.h,
              maxw = 0.9 * card.T.w - 0.15,
              hover = true,
              shadow = true,
              colour = G.C.UI.BACKGROUND_INACTIVE,
              one_press = "true",
              button = "star_select_consumeable",
              func = "star_can_select_consumeable"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("b_select"),
                  colour = G.C.UI.TEXT_LIGHT,
                  scale = 0.45,
                  shadow = true
                }
              }
            }
          },
          { n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
          { n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
          { n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
          { n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } }
        }
      }
    end
  end
  return uasb_ref(card)
end
