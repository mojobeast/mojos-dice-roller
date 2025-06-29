dialog show @s {\
  "type": "minecraft:notice",\
  "title": "Hello World!",\
  "pause": false,\
  "after_action": "none",\
  "action": {\
    "label": "OK",\
    "action": {\
      "type": "run_command",\
      "command": "trigger mojodice.event set 2"\
    }\
  }\
}