#phase.mcfunction
execute at @p[tag=wicked] run function particle 
execute at @p[tag=wicked] run function particle 
execute at @a[tag=wicked] as @a[tag=wicked] align x align z unless block ~ ~ ~ #minecraft:phasing run fill ~ ~ ~ ~ ~1 ~ air
execute at @p[tag=wicked] run function particle 
execute at @p[tag=wicked] run function particle 
