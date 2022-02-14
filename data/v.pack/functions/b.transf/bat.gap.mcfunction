#> v.pack:b.transf/bat.gap

#> Align Y
execute at @s align y run tp ~ ~.2 ~
# Z Gap
execute if predicate v.pack:world/zbat.gap at @s align z run tp ~ ~ ~.5
# X Gap
execute if predicate v.pack:world/xbat.gap at @s align x run tp ~.5 ~ ~
#> -Z
execute unless block ~ ~ ~-.3 #v.pack:air at @s run tp ~ ~ ~.2
#> +Z
execute unless block ~ ~ ~.3 #v.pack:air at @s run tp ~ ~ ~-.2
#> -X
execute unless block ~-.3 ~ ~ #v.pack:air at @s run tp ~.2 ~ ~
#> +X
execute unless block ~.3 ~ ~ #v.pack:air at @s run tp ~-.2 ~ ~