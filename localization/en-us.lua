return {
  descriptions = {
    Blind = {
      bl_wheel = {
        name = "The Wheel",
        text = {
          "#1# chance the next card",
          "gets drawn face down",
        },
      },
    },
    Enhanced = {
      m_lucky = {
        name = "Lucky Card",
        text = {
          "{C:green}#1#{} chance",
          "for {C:mult}+#3#{} Mult",
          "{C:green}#2#{} chance",
          "to win {C:money}$#4#",
        },
      },
      m_glass={
          name="Glass Card",
          text = {
              "{X:mult,C:white} X#1# {} Mult",
              "{C:green}#2#{} chance to",
              "destroy card",
          },
      },
    },
    Joker = {
      j_marble = {
        name = "Marble Joker",
        text = {
          "Adds #1# {C:attention}Stone{} #2#",
          "to deck when",
          "{C:attention}Blind{} is selected",
        },
      },
      j_8_ball = {
        name = "8 Ball",
        text = {
          "{C:green}#1#{} chance for each",
          "played {C:attention}8{} to create",
          "#2# {C:tarot}Tarot{} #3# when scored",
          "{C:inactive}(Must have room)",
        },
      },
      j_stencil = {
        name = "Joker Stencil",
        text = {
          "{X:red,C:white} X#1# {} Mult for each",
          "empty {C:attention}Joker{} slot",
          "{s:0.8}Joker Stencil included",
          "{C:inactive}(Currently {X:red,C:white} X#2# {C:inactive})",
        },
      },
      j_mime = {
        name = "Mime",
        text = {
          "Retrigger all",
          "card {C:attention}held in",
          "{C:attention}hand{} abilities {C:attention}#1# #2#{}",
        },
      },
      j_ceremonial = {
        name = "Ceremonial Dagger",
        text = {
          "When {C:attention}Blind{} is selected,",
          "destroy Joker to the right",
          "and permanently add {C:attention}#1# #2#",
          "its sell value to this {C:red}Mult",
          "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
        },
      },
      j_dusk = {
        name = "Dusk",
        text = {
          "Retrigger all played",
          "cards in {C:attention}final",
          "{C:attention}hand{} of round {C:attention}#1# #2#{}",
        },
      },
      j_raised_fist = {
        name = "Raised Fist",
        text = {
          "Adds {C:attention}#1# #2#{} the rank",
          "of {C:attention}lowest{} ranked card",
          "held in hand to Mult",
        },
      },
      j_chaos = {
        name = "Chaos the Clown",
        text = {
          "{C:attention}#1#{} free {C:green}#2#",
          "per shop",
        },
      },
      j_hack = {
        name = "Hack",
        text = {
          "Retrigger",
          "each played",
          "{C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5{}",
          "{C:attention}#1# #2#{}",
        },
      },
      j_supernova = {
        name = "Supernova",
        text = {
          "Adds the number of times",
          "{C:attention}poker hand{} has been",
          "played this run to Mult",
          "#1#{C:attention}#2#{}#3#"
        },
      },
      j_space = {
        name = "Space Joker",
        text = {
          "{C:green}#1#{} chance to",
          "upgrade level of",
          "played {C:attention}poker hand{} {C:attention}#2# #3#{}",
        },
      },
      j_oops = {
        name = "Oops! All 6s",
        text = {
          "Multiplies all {C:attention}listed",
          "{C:green,E:1,S:1.1}probabilities by #1#",
          "{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}2 in 3{C:inactive}",
          "{C:inactive}if multiplied by 2)"
        },
      },
      j_dna = {
        name = "DNA",
        text = {
          "If {C:attention}first hand{} of round",
          "has only {C:attention}#1#{} card, add",
          "{C:attention}#2#{} permanent #3# to deck",
          "and draw #4# to {C:attention}hand",
        },
      },
      j_sixth_sense = {
        name = "Sixth Sense",
        text = {
          "If {C:attention}first hand{} of round is",
          "a single {C:attention}6{}, destroy it and",
          "create #1# {C:spectral}Spectral{} #2#",
          "{C:inactive}(Must have room)",
        },
      },
      j_superposition = {
        name = "Superposition",
        text = {
          "Create #1# {C:tarot}Tarot{} #2# if",
          "poker hand contains an",
          "{C:attention}Ace{} and a {C:attention}Straight{}",
          "{C:inactive}(Must have room)",
        },
      },
      j_seance = {
        name = "Séance",
        text = {
          "If {C:attention}poker hand{} is a",
          "{C:attention}#1#{}, create",
          "#2# random {C:spectral}Spectral{} #3#",
          "{C:inactive}(Must have room)",
        },
      },
      j_vagabond = {
        name = "Vagabond",
        text = {
          "Create #2# {C:purple}Tarot{} #3#",
          "if hand is played",
          "with {C:money}$#1#{} or less",
          "{C:inactive}(Must have room)"
        },
      },
      j_hallucination = {
        name = "Hallucination",
        text = {
          "{C:green}#1#{} chance to create",
          "#2# {C:tarot}Tarot{} #3# when any",
          "{C:attention}Booster Pack{} is opened",
          "{C:inactive}(Must have room)",
        },
      },
      j_drunkard = {
        name = "Drunkard",
        text = {
          "{C:red}+#1#{} #2#",
          "each round",
        },
      },
      j_diet_cola = {
        name = "Diet Cola",
        text = {
          "Sell this card to",
          "create #2# free",
          "{C:attention}#1#",
        },
      },
      j_selzer = {
        name = "Seltzer",
        text = {
          "Retrigger all",
          "cards played for",
          "the next {C:attention}#1#{} hands",
          "{C:attention}#2# #3#"
        },
      },
      j_mr_bones = {
        name = "Mr. Bones",
        text = {
          "Prevents Death",
          "if chips scored",
          "are at least {C:attention}#1#%",
          "of required chips",
          "{C:red,E:2}self destructs{}",
        },
      },
      j_sock_and_buskin = {
        name = "Sock and Buskin",
        text = {
          "Retrigger all",
          "played {C:attention}face{} cards",
          "{C:attention}#1# #2#"
        },
      },
      j_swashbuckler = {
        name = "Swashbuckler",
        text = {
          "Adds the sell value",
          "of all other owned",
          "{C:attention}Jokers{} to Mult",
          "#2#{C:attention}#3#{}#4#",
          "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
        },
      },
      j_certificate = {
        name = "Certificate",
        text = {
          "When round begins,",
          "add {C:attention}#1#{} random {C:attention}playing",
          "{C:attention}#2#{} with a random",
          "{C:attention}seal{} to your hand",
        },
      },
      j_invisible = {
        name = "Invisible Joker",
        text = {
          "After {C:attention}#1#{} rounds,",
          "sell this card to",
          "{C:attention}Duplicate{} {C:attention}#3#{} random #4#",
          "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)",
        },
      },
      j_cartomancer = {
        name = "Cartomancer",
        text = {
          "Create #1# {C:tarot}Tarot{} #2#",
          "when {C:attention}Blind{} is selected",
          "{C:inactive}(Must have room)",
        },
      },
      j_burnt = {
        name = "Burnt Joker",
        text = {
          "Upgrade the level of",
          "the first {C:attention}discarded",
          "poker hand each round",
          "{C:attention}#1# #2#"
        },
      },
      j_gros_michel = {
        name = "Gros Michel",
        text = {
          "{C:mult}+#1#{} Mult",
          "{C:green}#2#{} chance this",
          "card is destroyed",
          "at end of round",
        },
      },
      j_business = {
        name = "Business Card",
        text = {
          "Played {C:attention}face{} cards have",
          "a {C:green}#1#{} chance to",
          "give {C:money}$#2#{} when scored",
        },
      },
      j_cavendish = {
        name = "Cavendish",
        text = {
          "{X:mult,C:white} X#1# {} Mult",
          "{C:green}#2#{} chance this",
          "card is destroyed",
          "at end of round",
        },
      },
      j_reserved_parking = {
        name = "Reserved Parking",
        text = {
          "Each {C:attention}face{} card",
          "held in hand has",
          "a {C:green}#2#{} chance",
          "to give {C:money}$#1#{}",
        },
      },
      j_bloodstone = {
        name = "Bloodstone",
        text = {
          "{C:green}#1#{} chance for",
          "played cards with",
          "{C:hearts}Heart{} suit to give",
          "{X:mult,C:white} X#2# {} Mult when scored",
        },
      },
      j_drivers_license = {
        name = "Driver's License",
        text = {
          "{X:mult,C:white} X#1# {} Mult if you have",
          "at least {C:attention}#2#{} Enhanced",
          "cards in your full deck",
          "{C:inactive}(Currently {C:attention}#3#{C:inactive})",
        },
      },
      j_sovhl_prophet = {
        name = "Prophet",
        text = {
          "Reveals the true chance",
          "of a listed probability",
        },
        unlock = {
          "Fail #1# {C:attention}Wheels of Fortune{}",
          "in a row",
          "{C:inactive}(Currently #2#{C:inactive})"
        }
      },
    },
    Tarot = {
      c_wheel_of_fortune = {
        name = "The Wheel of Fortune",
        text = {
          "{C:green}#1#{} chance to add",
          "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or",
          "{C:dark_edition}Polychrome{} edition",
          "to a random {C:attention}Joker",
        },
      },
    },
    Stake = {
      stake_white = {
        name = "Plastic White Stake",
        text = {
          "Base score scaling",
          "No In-Run Stickers",
        },
      },
      stake_red = {
        name = "Plastic Red Stake",
        text = {
          "Shop can have {C:attention}Eternal{} Jokers",
          "{C:inactive,s:0.8}(Can't be sold or destroyed)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_green = {
        name = "Plastic Green Stake",
        text = {
          "Shop can have {C:attention}Perishable{} Jokers",
          "{C:inactive,s:0.8}(Debuffed after 5 Rounds)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_black = {
        name = "Plastic Black Stake",
        text = {
          "Shop can have {C:attention}Rental{} Jokers",
          "{C:inactive,s:0.8}(Costs {C:money,s:0.8}$3{C:inactive,s:0.8} per round)",
          "{C:inactive,s:0.8}(Can be bought for {C:money,s:0.8}$1{C:inactive,s:0.8})",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_blue = {
        name = "Plastic Blue Stake",
        text = {
          "Shop can have {C:attention}Magnet{} Jokers",
          "{C:inactive,s:0.8}(Fixes adjacent Jokers)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_purple = {
        name = "Plastic Purple Stake",
        text = {
          "Shop can have {C:attention}Delayed{} Jokers",
          "{C:inactive,s:0.8}(Debuffed on acquisition for 3 rounds)",
          "{C:inactive,s:0.8}(Effects double after activation)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_orange = {
        name = "Plastic Orange Stake",
        text = {
          "Shop can have {C:attention}Toxic{} Jokers",
          "{C:inactive,s:0.8}(Debuffs adjacent Jokers after 3 rounds of exposure)",
          "{C:inactive,s:0.8}(Exposure can decrease and stack)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_gold = {
        name = "Plastic Gold Stake",
        text = {
          "Shop can have {C:attention}Supercritical{} Jokers",
          "{C:inactive,s:0.8}(Effects double each round for 5 rounds)",
          "{C:inactive,s:0.8}(Destroys itself and adjacent Jokers afterwards)",
          "{s:0.8}Applies all previous Plastic Stakes",
        },
      },
      stake_sovhl_clay_white = {
        name = "Clay White Stake",
        text = {
          "Required score scales",
          "faster for each {C:attention}Ante",
          "No In-Run Stickers",
        },
      },
      stake_sovhl_clay_red = {
        name = "Clay Red Stake",
        text = {
          "Shop can have {C:attention}Eternal{} Jokers",
          "{C:inactive,s:0.8}(Can't be sold or destroyed)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_green = {
        name = "Clay Green Stake",
        text = {
          "Shop can have {C:attention}Perishable{} Jokers",
          "{C:inactive,s:0.8}(Debuffed after 5 Rounds)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_black = {
        name = "Clay Black Stake",
        text = {
          "Shop can have {C:attention}Rental{} Jokers",
          "{C:inactive,s:0.8}(Costs {C:money,s:0.8}$3{C:inactive,s:0.8} per round)",
          "{C:inactive,s:0.8}(Can be bought for {C:money,s:0.8}$1{C:inactive,s:0.8})",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_blue = {
        name = "Clay Blue Stake",
        text = {
          "Shop can have {C:attention}Magnet{} Jokers",
          "{C:inactive,s:0.8}(Fixes adjacent Jokers)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_purple = {
        name = "Clay Purple Stake",
        text = {
          "Shop can have {C:attention}Delayed{} Jokers",
          "{C:inactive,s:0.8}(Debuffed on acquisition for 3 rounds)",
          "{C:inactive,s:0.8}(Effects double after activation)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_orange = {
        name = "Clay Orange Stake",
        text = {
          "Shop can have {C:attention}Toxic{} Jokers",
          "{C:inactive,s:0.8}(Debuffs adjacent Jokers after 3 rounds of exposure)",
          "{C:inactive,s:0.8}(Exposure can decrease and stack)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_clay_gold = {
        name = "Clay Gold Stake",
        text = {
          "Shop can have {C:attention}Supercritical{} Jokers",
          "{C:inactive,s:0.8}(Effects double each round for 5 rounds)",
          "{C:inactive,s:0.8}(Destroys itself and adjacent Jokers afterwards)",
          "{s:0.8}Applies all previous Clay Stakes",
        },
      },
      stake_sovhl_ceramic_white = {
        name = "Ceramic White Stake",
        text = {
          "Required score scales",
          "even faster for each {C:attention}Ante",
          "No In-Run Stickers",
        },
      },
      stake_sovhl_ceramic_red = {
        name = "Ceramic Red Stake",
        text = {
          "Shop can have {C:attention}Eternal{} Jokers",
          "{C:inactive,s:0.8}(Can't be sold or destroyed)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_green = {
        name = "Ceramic Green Stake",
        text = {
          "Shop can have {C:attention}Perishable{} Jokers",
          "{C:inactive,s:0.8}(Debuffed after 5 Rounds)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_black = {
        name = "Ceramic Black Stake",
        text = {
          "Shop can have {C:attention}Rental{} Jokers",
          "{C:inactive,s:0.8}(Costs {C:money,s:0.8}$3{C:inactive,s:0.8} per round)",
          "{C:inactive,s:0.8}(Can be bought for {C:money,s:0.8}$1{C:inactive,s:0.8})",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_blue = {
        name = "Ceramic Blue Stake",
        text = {
          "Shop can have {C:attention}Magnet{} Jokers",
          "{C:inactive,s:0.8}(Fixes adjacent Jokers)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_purple = {
        name = "Ceramic Purple Stake",
        text = {
          "Shop can have {C:attention}Delayed{} Jokers",
          "{C:inactive,s:0.8}(Debuffed on acquisition for 3 rounds)",
          "{C:inactive,s:0.8}(Effects double after activation)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_orange = {
        name = "Ceramic Orange Stake",
        text = {
          "Shop can have {C:attention}Toxic{} Jokers",
          "{C:inactive,s:0.8}(Debuffs adjacent Jokers after 3 rounds of exposure)",
          "{C:inactive,s:0.8}(Exposure can decrease and stack)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
      stake_sovhl_ceramic_gold = {
        name = "Ceramic Gold Stake",
        text = {
          "Shop can have {C:attention}Supercritical{} Jokers",
          "{C:inactive,s:0.8}(Effects double each round for 5 rounds)",
          "{C:inactive,s:0.8}(Destroys itself and adjacent Jokers afterwards)",
          "{s:0.8}Applies all previous Ceramic Stakes",
        },
      },
    },
    Other = {
      sovhl_magnet = {
        name = "Magnet",
        text = {
          "This Joker fixes",
          "adjacent Jokers to",
          "their current position",
        },
      },
      sovhl_delayed = {
        name = "Delayed",
        text = {
          "Debuffed on acquisition",
          "for {C:attention}#1#{} rounds",
          "{C:inactive}({C:attention}#2#{C:inactive} remaining)",
          "Effects doubled on activation",
        },
      },
      sovhl_toxic = {
        name = "Toxic",
        text = {
          "Debuffs adjacent Jokers",
          "after 3 consecutive",
          "rounds exposed",
        },
      },
      sovhl_toxic_stack_one = {
        name = "Toxic Exposure 1/3",
        text = {
          "This Joker has been",
          "exposed to toxicity once",
          "Move it away from Toxic Jokers",
          "to decrease exposure"
        },
      },
      sovhl_toxic_stack_two = {
        name = "Toxic Exposure 2/3",
        text = {
          "This Joker has been",
          "exposed to toxicity twice",
          "Move it away from Toxic Jokers",
          "immediately or it'll get debuffed"
        },
      },
      sovhl_supercritical = {
        name = "Supercritical",
        text = {
          "Effects doubled",
          "each round for 5 rounds",
          "Destroys itself and",
          "adjacent Jokers afterwards",
          "{C:inactive}(Stage {C:attention}#1#{}{C:inactive}/5){}"
        },
      },
      white_sticker = {
        name = "Plastic White Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic White",
          "{C:attention}Stake{} difficulty",
        },
      },
      red_sticker = {
        name = "Plastic Red Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Red",
          "{C:attention}Stake{} difficulty",
        },
      },
      green_sticker = {
        name = "Plastic Green Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Green",
          "{C:attention}Stake{} difficulty",
        },
      },
      black_sticker = {
        name = "Plastic Black Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Black",
          "{C:attention}Stake{} difficulty",
        },
      },
      blue_sticker = {
        name = "Plastic Blue Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Blue",
          "{C:attention}Stake{} difficulty",
        },
      },
      purple_sticker = {
        name = "Plastic Purple Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Purple",
          "{C:attention}Stake{} difficulty",
        },
      },
      orange_sticker = {
        name = "Plastic Orange Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Orange",
          "{C:attention}Stake{} difficulty",
        },
      },
      gold_sticker = {
        name = "Plastic Gold Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Plastic Gold",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_white_sticker = {
        name = "Clay White Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay White",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_red_sticker = {
        name = "Clay Red Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Red",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_green_sticker = {
        name = "Clay Green Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Green",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_black_sticker = {
        name = "Clay Black Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Black",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_blue_sticker = {
        name = "Clay Blue Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Blue",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_purple_sticker = {
        name = "Clay Purple Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Purple",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_orange_sticker = {
        name = "Clay Orange Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Orange",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_clay_gold_sticker = {
        name = "Clay Gold Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Clay Gold",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_white_sticker = {
        name = "Ceramic White Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic White",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_red_sticker = {
        name = "Ceramic Red Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Red",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_green_sticker = {
        name = "Ceramic Green Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Green",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_black_sticker = {
        name = "Ceramic Black Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Black",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_blue_sticker = {
        name = "Ceramic Blue Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Blue",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_purple_sticker = {
        name = "Ceramic Purple Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Purple",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_orange_sticker = {
        name = "Ceramic Orange Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Orange",
          "{C:attention}Stake{} difficulty",
        },
      },
      sovhl_ceramic_gold_sticker = {
        name = "Ceramic Gold Sticker",
        text = {
          "Used this Joker",
          "to win on {C:attention}Ceramic Gold",
          "{C:attention}Stake{} difficulty",
        },
      },
    },
  },
  misc = {
    labels = {
      sovhl_magnet = "Magnet",
      sovhl_delayed = "Delayed",
      sovhl_toxic = "Toxic",
      sovhl_toxic_stack_one = "Toxic Exposure 1/3",
      sovhl_toxic_stack_two = "Toxic Exposure 2/3",
      sovhl_supercritical = "Supercritical"
    },
    dictionary = {
      k_active_ex = "Active!",
      k_card_singular = "card",
      k_card_plural = "cards",
      k_time_singular = "time",
      k_time_plural = "times",
      k_stone_singular = "Stone",
      k_stone_plural = "Stones",
      k_reroll_singular = "Reroll",
      k_reroll_plural = "Rerolls",
      k_tarot = "Tarot",
      k_multiplied_by = "Multiplied by",
      k_copy_singular = "copy",
      k_copy_plural = "copies",
      k_discard_singular = "discard",
      k_discard_plural = "discards",
      k_pronoun_singular = "it",
      k_pronoun_plural = "them",
      k_double_tag_singular = "Double Tag",
      k_double_tag_plural = "Double Tags",
      k_joker_singular = "Joker",
      k_joker_plural = "Jokers",
      k_toxic_minus_one = "-1 Toxic",
      k_toxic_plus_one = "+1 Toxic",
      k_supercritical_plus_one = "+1 Supercritical",
      k_supercritical_reset = "Supercritical Reset",
      k_destroyed_ex = "Destroyed!",
    },
    v_dictionary = {
      a_active = "Active in #1#",
      a_plus_stone = "+#1# #2#",
      a_plus_tarot = "+#1# Tarot"
    },
  },
}
