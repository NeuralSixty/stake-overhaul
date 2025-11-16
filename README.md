# Balatro Stake Overhaul

Fundamentally overhauls the stake difficulty system.

Sticker and Joker asset art by Phylanth.

- [Summary](#summary)
- [Difficulty Types](#difficulty-types)
  - [Static Difficulty](#static-difficulty)
  - [Emergent Complexity](#emergent-complexity)
- [Stakes on New Run](#stakes-on-new-run)
  - [Stake Materials](#stake-materials)
  - [Stake Colors](#stake-colors)
  - [Lowest and Highest Stakes](#lowest-and-highest-stakes)
  - [Sticker Types](#sticker-types)
    - [No stickers](#no-stickers)
    - [Eternal stickers (Cannot be sold or destroyed)](#eternal-stickers-cannot-be-sold-or-destroyed)
    - [Perishable stickers (Debuffed after 5 Rounds)](#perishable-stickers-debuffed-after-5-rounds)
    - [Rental stickers (Costs $3 per round, can be bought for $1)](#rental-stickers-costs-3-per-round-can-be-bought-for-1)
    - [Magnet stickers (Fixes adjacent Jokers)](#magnet-stickers-fixes-adjacent-jokers)
    - [Delayed stickers (Debuffed on acquisition for 3 rounds, effects double afterwards)](#delayed-stickers-debuffed-on-acquisition-for-3-rounds-effects-double-afterwards)
    - [Toxic stickers (Debuffs adjacent jokers after 3 rounds of constant exposure, can decrease and stack)](#toxic-stickers-debuffs-adjacent-jokers-after-3-rounds-of-constant-exposure-can-decrease-and-stack)
    - [Supercritical stickers (Effects double each round for 5 rounds, destroys itself and adjacent Jokers afterwards)](#supercritical-stickers-effects-double-each-round-for-5-rounds-destroys-itself-and-adjacent-jokers-afterwards)
  - [Legendary Jokers](#legendary-jokers)
  - [Sticker synergies on the same card](#sticker-synergies-on-the-same-card)
    - [Eternal and Perishable](#eternal-and-perishable)
    - [Delayed and Perishable, Rental, Toxic, Supercritical](#delayed-and-perishable-rental-toxic-supercritical)
    - [Eternal and Supercritical](#eternal-and-supercritical)
    - [Perishable and Supercritical](#perishable-and-supercritical)
- [Note on the traditional Red Stake effect](#note-on-the-traditional-red-stake-effect)
- [Note on the traditional Blue Stake effect](#note-on-the-traditional-blue-stake-effect)
- [Controlled Randomness](#controlled-randomness)
- [Custom Jokers](#custom-jokers)

## Summary

The Stake Overhaul is the Balatro we wish we had played from the very beginning.

Difficulty is a never-ending struggle of proclaiming ideals of what a risk/reward system should be. We want both beginners and experienced players, over the course of entire runs, to learn, become better at, and enjoy a sense of accomplishment from the risks and rewards provided, without at least one group becoming frustrated or the other finding them too easy.

Our aim with the Stake Overhaul is to put on display our own vision of a risk/reward system. We will split up this vision into multiple parts and explain the what and the why of each fundamental change done to the stakes, as well as to some other sections of the game involving randomness.

The Stake Overhaul is, ultimately, our ideal of a challenging, but fair Balatro. In this manner, it wishes to remain as close as possible to the vanilla feel of the game.

## Difficulty Types

We categorize two types of difficulty that exist within Balatro as follows:

- Static Difficulty
- Emergent Complexity

### Static Difficulty

We believe that static difficulty is considered artificial difficulty, meaning that the challenge it's supposed to provide has a high risk of feeling unfair and lacking a sense of accomplishment due to a level of superficiality in designing and developing it. While we feel that static difficulty is now an ingrained component of Balatro, and therefore a decision was made in this mod not to remove it, it was important to properly separate static difficulty from emergent complexity and give the player the freedom to choose the static difficulty they wish for before a run starts.

### Emergent Complexity

Emergent complexity is a type of organic difficulty that generally feels fair to the player and often provides a level of accomplishment in surmounting it due to the immersion it creates for the player. This immersion is the result of emergent situations that force the player into analyzing and developing complex strategies to surpass them. In other words, emergent complexity adds layers of decision-making to the various situations the player might find themselves in at any point in time during the run.

## Stakes on New Run

Stakes are now divided into two properties:

- Material
- Color

A Stake is always composed of a material and a color, which can be chosen at the start of a new run.

### Stake Materials

The stake materials are as follows:

- Plastic
- Clay
- Ceramic

Stake materials reflect the static difficulty provided by the scaling of the traditional Green and Purple stakes. In this regard, the mechanics for these stakes are as follows:

- Plastic represents base scaling.
- Clay represents the increased scaling of the traditional Green stake.
- Ceramic represents the increased scaling of the traditional Purple stake.

Despite being static difficulty and, therefore, artificial difficulty, we believe the traditional scaling can still be used as a measure of self-evaluating one's own skill without having to first be exposed to emergent complexity.

### Stake Colors

The stake colors are as follows:

- White
- Red
- Green
- Black
- Blue
- Purple
- Orange
- Gold

Stake colors reflect the emergent complexity provided by the traditional in-run stickers on Jokers, and also provide new forms of this complexity through new in-run stickers.

Despite the resemblance between the overhauled and the traditional order and usage of the colors, the mechanics have been fundamentally changed:

- White: No stickers
- Red: Adds Eternal stickers
- Green: Adds Perishable stickers
- Black: Adds Rental stickers
- Blue: Adds Magnet stickers
- Purple: Adds Delayed stickers (courtesy of Lawn_Mower_6639)
- Orange: Adds Toxic stickers (courtesy of Lawn_Mower_6639)
- Gold: Adds Supercritical stickers

### Lowest and Highest Stakes

- Lowest Stake: Plastic White Stake
- Highest Stake: Ceramic Gold Stake

Plastic White Stake, Clay White Stake and Ceramic White Stake are all unlocked at the very beginning, leaving the player to choose which static difficulty they want to start in.

### Sticker Types

#### No stickers

Players should be allowed access to the most basic gameplay to build a point of reference for when layers of emergent complexity start coming in.

#### Eternal stickers (Cannot be sold or destroyed)

Eternal Jokers provide emergent complexity by forcing long-term consequences on the player. Therefore, Eternal stickers stay on this mod.

#### Perishable stickers (Debuffed after 5 Rounds)

Perishable Jokers provide emergent complexity by forcing creative short-term solutions and pivoting. Therefore, Perishable stickers stay on this mod.

#### Rental stickers (Costs $3 per round, can be bought for $1)

Rental Jokers provide emergent complexity by forcing thoughtfulness on economy. To encourage this thoughtfulness, the effect of the traditional red stake was removed. More on this at [Note on the traditional Red Stake effect](#note-on-the-traditional-red-stake-effect). Therefore, Rental stickers stay on this mod.

#### Magnet stickers (Fixes adjacent Jokers)

Magnet Jokers provide emergent complexity by forcing awareness of Joker positioning and thoughtfulness on Joker effect chain reactions.

#### Delayed stickers (Debuffed on acquisition for 3 rounds, effects double afterwards)

Delayed Jokers provide emergent complexity by encouraging possibilities of short-term risk leading to higher long-term rewards. Jokers whose effects either do not benefit or become extremely unfair from being doubled do not receive Delayed stickers; these are: Four Fingers, Pareidolia, Splash, Shortcut, Midas Mask, Luchador, Smeared Joker, Showman, Blueprint, Brainstorm, Astronomer and Chicot.

#### Toxic stickers (Debuffs adjacent jokers after 3 rounds of constant exposure, can decrease and stack)

Toxic Jokers provide emergent complexity in the same way as Magnet Jokers, forcing awareness of Joker positioning and thoughtfulness on Joker effect chain reactions.

#### Supercritical stickers (Effects double each round for 5 rounds, destroys itself and adjacent Jokers afterwards)

Supercritical Jokers provide emergent complexity by encouraging creative thinking in difficult short-term situations. Jokers whose effects either do not benefit or become extremely unfair from being doubled do not receive Supercritical stickers; these are: Four Fingers, Pareidolia, Splash, Shortcut, Midas Mask, Luchador, Smeared Joker, Showman, Blueprint, Brainstorm, Astronomer and Chicot.

### Legendary Jokers

Legendary Jokers do not spawn with any stickers (whether vanilla or non-vanilla) under any circumstances.

### Sticker synergies on the same card

Further emergent complexity is provided by the following sticker synergies on the same card, as well as some design decisions that led to the synergies existing:

- Eternal + Perishable (possible on this mod): Becomes negative when debuffed.
- Delayed + Perishable, Rental, Toxic, Supercritical: Perishable, Rental, Toxic and Supercritical do not come into effect until the card is active.
- Eternal + Supercritical: Cannot destroy itself. Repeats supercritical cycle.
- Perishable + Supercritical: Supercritical effect after 5 rounds does not trigger if Joker would also be debuffed by then.

#### Eternal and Perishable

This synergy is disabled in the vanilla Balatro due to the obvious drawback of a debuffed Joker occupying a Joker slot forever. However, the result of this is less synergy variety, since we are excluding Jokers that happen to contain both Perishable and Eternal. Instead of constraining the possibilities, we allow more freedom of complexity and reward the player for dealing with the situation by making the Joker negative, nullifying the drawback of the synergy.

This also takes effect for Jokers that become debuffed through Toxic Jokers.

#### Delayed and Perishable, Rental, Toxic, Supercritical

The player is preparing themselves on how to best make use of the emergent complexity that will come in 3 rounds. Therefore, they shouldn't be punished for coming up with a plan/strategy in the meantime.

#### Eternal and Supercritical

Repeating the supercritical cycle is an opportunity for experienced players to express skill. An alternative for less experienced players is given with Perishable + Supercritical.

#### Perishable and Supercritical

As an alternate access to the Supercritical without overwhelming a less experienced player, this can still provide plenty of complexity.

## Note on the traditional Red Stake effect

The effect states that Small Blinds wouldn't reward any money anymore. However, we believe this to be artificial difficulty, with two reasons for this:

- Denying access to the already small amount of money from the Small Blind *might* force the player to find alternate ways of displaying skill, but more often than not, what ends up happening is that it leaves the player exposed to more RNG without a way to fight back. In this way, the belief is that allowing display of player skill through fine-tuned usage of money is more engaging than forcing display of player skill through money denial. More experienced players are more knowledgeable in fine-tuning their economies in ways that less experienced players can't. Therefore, allowing the Small Blind to reward its small amount of money is a further opportunity to display player skill.
- Denying access to money also denies or strongly discourages access to shop items that would otherwise provide the player with more dynamics to deal with challenges. An obvious example of this is a Rental Joker that would otherwise be a fine addition to the player's arsenal. Not denying the small amount of money from the Small Blind allows such a Rental Joker to be bought while allowing the Rental effect to still be a challenge to the player.

## Note on the traditional Blue Stake effect

We believe the effect to be controversial in its blatant artificial difficulty and have removed it in favor of organic difficulty.

## Controlled Randomness

All cards involving a chance to trigger an effect now use a pseudorandom distribution instead of a uniform distribution to drastically reduce chances of streaks of non-triggering (e.g., "Wheels of Nope"), albeit also reducing chances of continuous triggering. Players can demonstrate skill by keeping mental notes on the current chance of each effect.

The reason for this is simple: uncontrolled randomness doesn't differentiate between beginner and experienced players. However, dealing with the unexpected is a trainable skill. Experienced players are expected to manipulate the odds as much as they can in their favor, leading to high win rates even on the highest stakes, without suppressing the main message about the true nature of chance - that it's possible to make no mistakes and still lose.

Note that almost any other game element also involving chance does not apply controlled randomness:

- Cerulean Bell card choice
- Amber Acorn shuffle
- Crimson Heart Joker choice
- The Hook card discarding choices
- Shop rerolls
- Joker Edition & Sticker applications
- Playing Card Edition, Enhancement & Seal applications
- Deck to Hand card drawing
- Booster pack options
- Any card spawning mechanism

More information about pseudorandom distributions can be found below:

- <https://probablydance.com/2019/08/28/a-new-algorithm-for-controlled-randomness/>
- <https://liquipedia.net/warcraft/Pseudo_Random_Distribution>
- <https://dota2.fandom.com/wiki/Random_Distribution>

## Custom Jokers

<p>
<details>
<summary>(Spoiler alert) The sole Joker of this mod is the following:</summary>
The Prophet, a Common Joker that reveals the actual current chance of listed probabilities to trigger. This Joker can be used as the alternative to keeping a mental track of the current chance of each listed probability. Therefore, the cost of not keeping this mental track is 1 Joker slot.
</details>
</p>
