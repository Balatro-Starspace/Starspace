return {
  descriptions = {
    Back = {
      b_star_starstruck = {
        name = "Starstruck Deck",
        text = {
          "Start run with",
          "one {C:attention}Star{} Card",
          "of each suit in deck"
        }
      }
    },
    Joker = {
      j_star_astro = {
        name = "Astro",
        text = {
          "Gains {X:chips,C:white}X#1#{} Chips when a",
          "{C:spades}Spade{} card is scored if played",
          "hand does not contain a {C:hearts}Heart{}",
          "{C:inactive}(Currently {X:chips,C:white}X#2#{C:inactive} Chips)"
        }
      },
      j_star_glorp = {
        name = "Glorp",
        text = {
          "{X:mult,C:white}X#1#{} Mult during",
          "{C:attention}context.#2#{}",
          "Context changes at",
          "{C:attention}end of round{}"
        }
      },
      j_star_scrap = {
        name = "Scrap",
        text = {
          "Gains {X:mult,C:white}X#1#{} Mult when a",
          "{C:hearts}Heart{} card is scored if played",
          "hand does not contain a {C:spades}Spade{}",
          "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
        }
      },
      j_star_crystal = {
        name = "Crystal",
        text = {
          "Copies the ability of",
          "{C:attention}Jokers{} to the left and right"
        }
      },
      j_star_shard = {
        name = "Shard",
        text = {
          "Copies the ability of the",
          "leftmost and rightmost {C:attention}Jokers{}"
        }
      },
      j_star_samson = {
        name = "Samson",
        text = {
          "{C:attention}Retriggers{} all played or",
          "held in hand {C:attention}Gold Cards{}"
        }
      },
      j_star_isotypical = {
        name = "Isotypical",
        text = {
          "Hand calculation is set to",
          "{X:dark_edition,C:white,s:1.2}Chips^log10(Mult^0.75){}"
        }
      }
    },
    Other = {
    },
    Planet = {
      c_star_planet_popstar = {
        name = "Planet Popstar",
        text = {
          "({V:1}lvl.#1#{}) Level up",
          "{C:attention}#2#{}",
          "{C:mult}+#3#{} Mult and",
          "{C:chips}+#4#{} chips"
        }
      }
    },
    Spectral = {
    },
    Voucher = {
    },
  },
  misc = {
    dictionary = {
      -- Rarities
      k_star_cosmic = "Cosmic",
      k_star_galactic = "Galactic",

      -- Credits
      star_ui_squad = "Core Team",
      star_ui_artists = "Artists",
      star_ui_coders = "Coders",
      star_ui_shaders = "Shaders",
    },
    labels = {
      k_star_cosmic = "Cosmic",
      k_star_galactic = "Galactic",
    },
    poker_hands = {
      star_flash = "Flash",
      star_royal_flash = "Royal Flash"
    },
    poker_hand_descriptions = {
      star_flash = {
        "4 cards with different suits"
      }
    },
    quips = {
    },
    ranks = {
      star_star = "Star"
    }
  }
}
