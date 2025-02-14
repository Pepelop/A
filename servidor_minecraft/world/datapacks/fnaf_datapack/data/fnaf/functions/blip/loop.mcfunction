scoreboard players add *Blip Timer 1
execute if score *Blip Timer matches 1 if score *BlipType Timer matches 1 run title @a actionbar {"text": "\uE033"}
execute if score *Blip Timer matches 2 if score *BlipType Timer matches 1 run title @a actionbar {"text": "\uE034"}
execute if score *Blip Timer matches 3 if score *BlipType Timer matches 1 run title @a actionbar {"text": "\uE035"}
execute if score *Blip Timer matches 4 if score *BlipType Timer matches 1 run title @a actionbar {"text": "\uE036"}
execute if score *Blip Timer matches 5 if score *BlipType Timer matches 1 run title @a actionbar {"text": ""}
execute if score *Blip Timer matches 1 if score *BlipType Timer matches 2 run title @a[tag=guard] actionbar {"text": "\uE033"}
execute if score *Blip Timer matches 2 if score *BlipType Timer matches 2 run title @a[tag=guard] actionbar {"text": "\uE034"}
execute if score *Blip Timer matches 3 if score *BlipType Timer matches 2 run title @a[tag=guard] actionbar {"text": "\uE035"}
execute if score *Blip Timer matches 4 if score *BlipType Timer matches 2 run title @a[tag=guard] actionbar {"text": "\uE036"}
execute if score *Blip Timer matches 5 if score *BlipType Timer matches 2 run title @a[tag=guard] actionbar {"text": ""}
execute if score *Blip Timer matches 5 run scoreboard players set *BlipType Timer 0
execute if score *Blip Timer matches 5 run scoreboard players reset *Blip Timer