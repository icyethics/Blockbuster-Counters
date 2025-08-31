## Blockbuster: Counters

Blockbuster is a series of API mods that offer features from the Balatro Goes Kino mod as stand-alone packages. They're set up to support other mods' use of these features without needing to also interact with Balatro Goes Kino's themes and playable content. 

Blockbuster Mods:
- Balatro Goes Kino (Source Content mod)
- Blockbuster: Counters 
- Blockbuster: Spellcasting (Not Yet Released)
- Blockbuster: Confections (Not Yet Released)
- Blockbuster: Abduction (Not Yet Released)
- Blockbuster: Value Manipulation (Not Yet Released)

Mods that use Blockbuster: Counters
- NONE (I just released this)

Counters added by the mod as a default:
Beneficial Counters:
- Mult Counters
- Chips Counters
- xMult Counters
- Money Counters
- Retrigger Counters

Detrimental Counters
- Debt Counter
- Poison Counter
- Stun Counter
- Fire Counter

Blockbuster: Counters is an API mod that adds a new layer to both playing cards and jokers: Counters. Counters offer design space to add status effects to cards and jokers, as well as timed detrimental effects. They are intended to tick down with each trigger or scoring of the card they're placed on, removing themselves after all counters have been consumed. 

A more detailed documentation will be provided soon.

Counter qualities:
pos_pcard = {x = x, y = y} 
-- This value is optional, and allows you to point to the specific location of the counter's playing card art on the same atlas as the joker art. If not given, this will be assumed to be placed one below the joker art of the counter.

config = {
    (optional) cap
}
-- The config is used like the config for all modded balatro objects. The cap quality can be set to indicate what the maximum amount of counters of the new counter type should be. This defaults to 99 if no cap is given. 

calculate = function(self, card, context)
-- This functions like the calculate function on seals and editions

Counter.increment(self, card, number)
-- This triggers whenever the counter is incremented. This function should not be called directly, and is called through Card.bb_increment_counter(increment number). Most prefab counters will have this in their calculate function. Use this when the counter affects specific persistent values that need to be changed through a calculation function

Counter.add_counter(self, card, number)
-- This triggers when a counter is initially added. 

Counter.remove_counter(self, card, number)
-- This triggers when a counter is destroyed in any way.

Counter related Contexts:
Debuff related context, designed to remove debuff counters from debuffed cards. This triggers immediately after context.after and is where counters that cause debuff effects can have their effects still trigger.
{
    full_hand = G.play.cards, 
    scoring_hand = scoring_hand, 
    scoring_name = text, 
    poker_hands = poker_hands, 
    after_debuff = true, 
    ignore_debuff = true
}

When a counter is applied to a card without a counter, or a different type of counter
{
    bb_counter_applied = true,
    card = self,
    counter_type = Blockbuster.Counter object,
    number = number
},

When a counter is incremented in any way
{
    bb_counter_incremented = true,
    card = self,
    counter_type = Blockbuster.Counter object,
    number = number
}

When a counter is removed in anyway
{
    bb_counter_removed = true,
    card = self,
    counter_type = Blockbuster.Counter object,
    removal_method = "tick_down", "counter_effect", "overwrite", or custom string
}
