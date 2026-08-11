$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Roll!",\
  "columns": 3,\
  "pause": false,\
  "after_action": "none",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": $(dice_formula_text),\
    }\
  ],\
  "actions": $(actions),\
  "exit_action": {\
    "label": "Cancel",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 2"\
    }\
  }\
}