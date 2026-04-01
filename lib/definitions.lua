-- Friends of Astro pool
SMODS.ObjectType {
  key = "friends_of_astro",
  default = "j_star_astro",
  cards = {}
}

-- Rarities
SMODS.Rarity {
  key = "cosmic",
  badge_colour = HEX("ED3BAF"),
  default_weight = 0.025
}

SMODS.Rarity {
  key = "galactic",
  badge_colour = HEX("00E4FF"),
  default_weight = 0
}

-- credits defined here
STAR_UTIL.credits = {
  squad = {
    colour = G.C.GREEN,
    entries = {
      "Astro",
      "Crystal",
      "Meta",
    }
  },
  artists = {
    colour = G.C.CHIPS,
    entries = {
      "Astro",
      "Camostar34",
      "candycane",
      "FirstTry",
      "Lyre",
      "SDM_0"
    }
  },
  coders = {
    colour = G.C.PURPLE,
    entries = {
      "Meta",
      "ThunderEdge",
      "wingedcatgirl",
      "CodeRevo",
      "GhostSalt"
    }
  },
  shaders = {
    colour = G.C.MULT,
    entries = {
      "cassknows",
      "Meta"
    }
  }
}
