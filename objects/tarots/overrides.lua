SMODS.Consumable:take_ownership('wheel_of_fortune', {
  config = { extra = { odds = 4 } },
  loc_vars = function(self, info_queue, card)
    local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
      'sovhl_wheel_of_fortune')
    local prophet_joker = next(SMODS.find_card('j_sovhl_prophet', false))

    if prophet_joker and card.config and card.config.center_key then
      SOVHL.init_prob_game_state(card.config.center_key)

      return {
        vars = {
          string.format(
            "%.2f%%",
            math.min((1 - math.pow(1 - SOVHL.CfromP(numerator / denominator), G.GAME.SOVHL.prob_fail_streak[card.config.center_key] + 1)), 1) *
            100
          )
        }
      }
    end

    return {
      vars = {
        math.min(numerator, denominator) .. ' in ' .. denominator
      }
    }
  end,
  use = function(self, card, area, copier)
    if SOVHL.pseudorandom_probability(card, 'sovhl_wheel_of_fortune', 1, card.ability.extra.odds) then
      local editionless_jokers = SMODS.Edition:get_edition_cards(G.jokers, true)

      local eligible_card = pseudorandom_element(editionless_jokers, 'sovhl_wheel_of_fortune')
      local edition = poll_edition('sovhl_wheel_of_fortune', nil, true, true,
        { 'e_polychrome', 'e_holo', 'e_foil' })
      eligible_card:set_edition(edition, true)
      check_for_unlock({ type = 'have_edition' })
    else
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
          attention_text({
            text = localize('k_nope_ex'),
            scale = 1.3,
            hold = 1.4,
            major = card,
            backdrop_colour = G.C.SECONDARY_SET.Tarot,
            align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.SMODS_BOOSTER_OPENED) and
                'tm' or 'cm',
            offset = { x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.SMODS_BOOSTER_OPENED) and -0.2 or 0 },
            silent = true
          })
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.06 * G.SETTINGS.GAMESPEED,
            blockable = false,
            blocking = false,
            func = function()
              play_sound('tarot2', 0.76, 0.4)
              return true
            end
          }))
          play_sound('tarot2', 1, 0.4)
          card:juice_up(0.3, 0.5)
          return true
        end
      }))
    end
  end
}, true)
