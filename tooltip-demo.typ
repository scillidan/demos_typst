#import "tooltip-template.typ": *
#show: tooltip-layout

= Zeus
*Intelligence* \
*Attack Type* Ranged \
*Complexity* 1/3 \
None can hide from Zeus, whether he's calling down a bolt to reveal the surroundings, sending an arc coursing through his nearest enemies, or summoning a terrifying volley of lightning upon all enemies. Wherever his foes are, Zeus will find them.
#parbreak

[Attributes]
#align(horizon, oasis-align(force-frac: 0.35,
  [#table(stroke: none, inset: 2pt, align: left, columns: 3, column-gutter: .35em,
    [*HP*], [582], [+2.4],
    [*MP*], [351], [+1.1])],
  [#table(stroke: none, inset: 2pt, align: left, columns: 3, column-gutter: .35em,
    [*Strength*], [21], [+2.1],
    [*Agility*], [11], [+1.2],
    [*Intelligence*], [23], [+3.3])]
))
#parbreak

[Roles]
#let data-roles = from-csv(delimiter: "|", "
Carry    | 0.3 | Support | 0 | Nuker     | 1
Disabler | 0   | Jungler | 0 | Durable   | 0
Escape   | 0   | Pusher  | 0 | Initiator | 0
")
#tblr(stroke: none, inset: 2pt, row-gutter: 0em, column-gutter: .75em, align: horizon,
  ..data-roles
)
#parbreak

[Stats]
#align(center, oasis-align(
  [#figure(
    table(stroke: none, inset: 2pt, align: (left, right), columns: 2,
      [*Damage*], [53-63],
      [*Attact Time*], [1.7],
      [*Attact Range*], [380],
      [*Projectile Speed*], [1100]),
    caption: [\(Attack\)]
  )],
  [#figure(
    table(stroke: none, inset: 2pt, align: (left, right), columns: 2,
      [*Armor*], [2.8],
      [*Magic Resist*], [25%]),
    caption: [\(Defense\)]
  )
  #figure(
    table(stroke: none, inset: 2pt, align: (left, right), columns: 2,
      [*Movement Speed*], [305],
      [*Turn Rate*], [0.6],
      [*Vision*], [1800/800]),
    caption: [\(Mobility\)]
  )]
))
#parbreak

[Abilities] \
#align(center)[\(Talent Tree\)]
#table(stroke: none, inset: 2pt, align: (left, horizon + center), columns: (9fr, 1fr),
  [3 Heavenly Jump Charges], table.cell(rowspan: 2)[25],
  [#h(2em)325 AoE Lightning, Bolt],
  [+0.5s Lightning Bolt Ministun], table.cell(rowspan: 2)[20],
  [#h(2em)+60 Arc Lightning Damage],
  [-20% Arc lightning Mana Cost / Cooldown], table.cell(rowspan: 2)[15],
  [#h(2em)+75 Thundergod's Wrath Damage],
  [+200 Health], table.cell(rowspan: 2)[10],
  [#h(2em)+1 Heavenly Jump Target],
)
#v(.1em)

#align(center)[\(Static Field\)]
#text[Zeus shocks any enemy that he attacks or is hit by his abilities, causing damage equal to a percentage of their current health.],

[Ability Details] \
*战斗态势.* \
#indent[反应 当敌人移入你的威吓范围时 \
*效果* 你可以对敌人进行一次借机攻击，攻击检定获得+2加值] \
*坚韧不拔.* 当你的生命值降至0时，你可以进行一次DC15的强韧豁免 \
_成功:_ 生命值减少到1而非倒地
#parbreak

[Full History] \
Lord of Heaven, father of gods, Zeus treats all the Heroes as if they are his rambunctious, rebellious children. After being caught unnumbered times in the midst of trysts with countless mortal women, his divine wife finally gave him an ultimatum: 'If you love mortals so much, go and become one. If you can prove yourself faithful, then return to me as my immortal husband. Otherwise, go and die among your creatures.' Zeus found her logic (and her magic) irrefutable, and agreed to her plan. He has been on his best behavior ever since, being somewhat fonder of immortality than he is of mortals. But to prove himself worthy of his eternal spouse, he must continue to pursue victory on the field of battle.