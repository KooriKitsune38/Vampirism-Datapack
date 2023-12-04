# Vampirism Datapack
_____
## Description
Embrace the darkness and let it transform you into a Vampire!

Ever wanted to become a vampire in Minecraft, but not those simple and shallow data-packs which are just "Burn under sunlight, night vision and night powers"?

Then guess what... here you have it!

It works on multiplayer, has no resource packs and is very vanilla-y style!

$~~$
## Features
### Vampire Temples
Build a temple from a respawn anchor, and find your way to the final stage.

This temple will allow anyone to start the transformation time into a vampire.

#### Activation
To activate it, find your way into the nether and place down a respawn anchor.

Now get onto it with an **Hell Wand** (_Blaze Rod and Ender Eye on the ground to do it_) and 4 Crying Obsidians in your inventory.

Click on top of the block (_Where the portal texture is_) to open it's inventory and get to the next level.

To advance, drop the paper upgrade to the anchor [​BUT, don't drop more than 1 paper at a time or it will glitch!]
Heals Vampires when nearby.

#### Broken Temples
Around the world you'll find up to **4 types** of broken temples, which will **contain some loot** for you to collect!

**They also lead to the Vampire Dimension! Check a few lines below!**

$~$
### Vampires
#### Transformation
When you get to the 4th stage of the Vampire Temple (See photo), you'll have to sacrifice yourself to begin the transformation.

This will take up to 72000 Ticks in-game, for a total of 1 Hour (3 Minecraft Days).

When the darkness is trying to possess your body, a few buffs and weaknesses will appear each day (Followed by texts in chat).

You'll then see when the transformation is complete, also by an achievement, sounds and effects.

#### Vampirism
After the transformation, you will gain different **buffs**.
- **Speed, regeneration, strength, resistance at night** (Scales depending on hour, at midnight they are more powerful);
- **Invisibility** in dark spots when sneaking;
- **Night vision** at dark spots when having high blood levels, if not you can still use your senses to spot creatures hidden in the dark!
- **No fall damage**;
- **Poison Resistance**;
- **Chance to bleed players**;
- **No damage by Vex**.

However this powers come with different **weaknesses**.
- **Sun exposure damage** (Can be prevented drinking fire resistance potions or wearing an helmet)
- **Fire Weakness**;
- **Iron touch hurts the vampire!** (Also when hit by players or mobs with iron weapons)

Vampires emits particles at night that only other vampires can spot, so you can keep the secret from your friends.

P.S. _Be careful around Iron Golems, they don't really like the scent vampires emit!_

### Bat Transformations!
Become a bat as a vampire!

When you become a vampire you'll have the possibility to turn into a bat.

This transformation will be available from blood level 80+.

#### What's like becoming a bat?

First of all, you'll have to become one, so to do it you'll have to jump from a block and sneak mid-air.

#### Pros and Cons
Of course you can't think that becoming a bat is as simple as it sounds.

Indeed, the problem with it is that you're extremely vulnerable while flying around and every damage will expose your human form! You also **can't wear any armour!**

It's _really helpful to escape difficult situations or even just explore big areas_.

However during this period you'll need a **lot of blood levels**, because it doesn't deplete it twice as fast, rather it's four times faster.

#### Versions
The bat form has two versions:

- **Old Version**: The "free" mode, which gives you complete control over the bat (Be Careful! This will let players go insanely fast and teleport to other players!)
- **Realistic Version**: This will make the bat go only forward where the player's looking. (While using this version, I recommend spectating the bat for the best experience)

Switching between the two is done by this command: `/scoreboard players set .batVersion v.Values #`, which '#' means the id of the version. [​0 is the Old Version, 1 is the Realistic Version]

#### Triggers:
`/trigger ToggleBat`
_This will toggle the transformation so you won't suddenly transform into a bat if you don't want to._
_It will also stop the bat form, however letting you transform again even without touching the ground._


P.S. _Golems also attack vampire bats, be much more careful!_

#### Config
_To toggle the global bat transformation (Default = 1):_
`/scoreboard players set .batEnabled v.Values 0/1` (Off = 0, On = 1)

_To change the bat version (Default = 1):_
`/scoreboard players set .batVersion v.Values 0/1` (Old = 0, Default = 1)

_To toggle the transformation under the sunlight (Default = 1):_
`/scoreboard players set .batUnderSun v.Values 0/1` (Off = 0, On = 1)

_To toggle the transformation until land (If set to Off it will stop the transformation to occur again until landing, Default = 0):_
`/scoreboard players set .batAlwaysOn v.Values 0/1` (Off = 0, On = 1)

### Blood Level

I wanted to do something different from levels or RPG stuff, and also add a bit of tension when being a vampire.

So when you become a vampire a low blood level will be assigned and it determines your "energy".

It decreases by 1 every 30 seconds, and can be increased by killing Humans (Players,Villagers,Witches).

This means that you will die if that's too low!

But... Higher amounts grant greater powers:
- 40+ BL = Light night regeneration and resistance, Spotting enemies in the dark (Not night vision!);
- 60+ BL = Speed at night and dark areas, Invisibility in dark areas;
- 80+ BL = Bat transformation;
- 100+ BL = Strength at night and strong regeneration at midnight;
- 110+ BL = Night vision in dark areas;
- Always = Immune to poison.

Now how do you **fill it up again** you may wonder... and as you might have thought, by eating raw meat or drinking blood!

When killing "Humans", a pair of human eyes (Or witch eyes) will drop to the player location.

Eaten by humans it poisons them, but vampires can extract their blood by eating them, or if available: Extract their blood in a brewing stand!

To allow the stand to extract the blood, you have to equip the Hell Wand and stand on it (You'll hear a click sound).

Afterwards place glass bottles in the appropriate slots and the eyes as ingredient.


Blood bottles can be enchanted by extracting some witch eyes into them!

#### Leveling UP:

You'll start with a blood level of 60, but that'll not be the cap forever!

When you become a vampire, check out the advancement tab and you'll see a sword which tells you the requirements (Killing Humans) for leveling up the maximun BL.

There are up to **5 levels**, each with it's own cap:

- 1) 60;
- 2) 80;
- 3) 100;
- 4) 120;
- 5) 180;

**Current Values**:
- Human Eyes = +12BL
- Witch Eyes = +10BL
- Blood Bottle = +20BL
- Enchanted Blood Bottle = +35BL
- Raw Porkchop & Beef = +3BL
- Raw Mutton = +2BL

At **night** and in the **nether**, there is a 65% probability of the blood level not decreasing.


### Purification Altar (Sanctum)
Tired of being a vampire? The solution is right here!

#### Building The Altar
You can build an altar by placing a circle of 8 quartz slabs with a quartz pillar in the middle, then a slab on top of the pillar and 4 upside down stairs around it. Now place water in the middle and drop inside it 5 Glowstone Blocks.

When active, it heals humans... but what about vampires?

It weakens them, slowing them gradually and if they stand on top of the water they might die!

#### Sanctum Water:
Now to your question... To cure vampirism you need the Sanctum Water.

To craft it you'll need to drop 12 glowstone dusts, a golden apple, a ghast tear and a water bottle in the water.

This potion grants great temporary powers to humans, but for their blood sucking counterparts it has a chance (60%) for the cure to fail and kill them, or succeed.


### The Qwuthal Dungeon is finally here!

After years of trying and working out different concepts like a dungeon generator, custom dimensions and many other things, it's now happening!
We have (almost) F**ULL SUPPORT FOR CUSTOM GENERATED STRUCTURES**!

That means I can easily just code what has been in the drafts for ages now: the Qwuthal Dungeon!

#### What is it?
The Qwuthal Dungeon is a vampire dungeon, set in the Qwuthal dimension, that resets each day (20 minutes).
It adds tons of new fun, or scary?, stuff to spice things up, namely:

- Dark Corridors
- Gates: They can be opened using a Key found in the dungeon (see at the end of the list)
- Loot Chests
- The Stalker: An entity staring at you patiently in the dark... waiting for something... but what?
- The Killer: A mass of doomed souls haunting the dungeon, wandering around. Be careful not to stand too close!

_The key is obtained from the bookshelves around the dungeon and by completing the library._

#### How do I get there?
There are **broken vampire temples** scattered around the world for you to search.

They contain (not always) a portal that can bring you to the Qwuthal dimension.

Why do I say "can"? Because there are two portals that can generate:
- Active Portal: A black portal that blinds you when getting close, they function as normal portals.
- Inactive Portal: A white version of the portal that has been purified, hence not doing anything other than existing for now.

P.S. _With the hell wand you can remove them, but don't remove the active ones (unless you're insane ig)_

### Custom Advancements
I thought about making challenges, but the only thing that crossed my mind was a simple tutorial.

When you start the game, click the Advancements tab and you'll see everything you read here as tasks.

I hope it will help players to get a bit more familiar to the mechanics this data-pack has to offer.

$~~$
**Installation**

Put the whole folder (or clone it) inside your world's datapack folder:
 - .minecraft/saves/%world%/datapacks/

$~~~$
# Thank You So Much
Thank you so much for downloading!

If you encounter any bug, let me know please (I'm a solo data-pack-er so I have limited testers... myself).

In the archive you download, there are different version with one which says: (Current).

That is what you should extract to the datapack folder, the others are just older versions.


### Also if you feature this pack somewhere, please let me know! I would love to see what players think of it!

# Join the Bakery! [Discord Link](https://discord.gg/jTDVxgQr3n)
