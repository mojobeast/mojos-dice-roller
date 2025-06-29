$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Dice Roller",\
  "pause": false,\
  "after_action": "none",\
  "actions": $(actions),\
  "exit_action": {\
    "label": "Cancel",\
    "action": {\
      "type": "run_command",\
      "command": "trigger mojodice.event set 2"\
    }\
  }\
}