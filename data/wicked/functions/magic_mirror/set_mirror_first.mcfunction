##
 # set_mirror.mcfunction
 # 
 #
 # Created by Antogone.
##



data modify storage magic_mirror info.dim append from entity @s Dimension
data modify storage magic_mirror info.x append from entity @s Pos[0]
data modify storage magic_mirror info.y append from entity @s Pos[1]
data modify storage magic_mirror info.z append from entity @s Pos[2]




execute at @s run summon interaction ~ ~0.6 ~ {width:1f, height: 1f, response: 1b, Tags: [magic_mirror],Passengers:[{id:"minecraft:marker",Tags:["store_dat","entry"]}]}
execute at @s run execute at @e[tag=magic_mirror] run summon item_display ~ ~0.5 ~ {Tags:["itm_disp"],billboard:"vertical",item_display:"fixed",item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10140005}}}





# scoreboard players operation $mirror_exit index += $magic_mirror incre_one
execute store result storage magic_mirror magic_id int 1 run scoreboard players get $mirror_exit index
data modify entity @e[type=marker,tag=store_dat,sort=nearest,limit=1] data.index set from storage magic_mirror magic_id


execute store result storage magic_mirror temp.index int 1 run scoreboard players get $mirror_entry index



give @s carrot_on_a_stick{CustomModelData:10140005,HideFlags:3,mirror_2:1b,display:{Name:"{\"text\":\"§2Magic Mirror : Exit\"}"}}
clear @s carrot_on_a_stick{mirror_1:1b} 1

# data modify storage magic_mirror magic_id set value $(index)
tag @s add mirror_1

