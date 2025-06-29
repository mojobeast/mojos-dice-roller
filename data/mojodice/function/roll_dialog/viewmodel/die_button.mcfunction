$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
  "label": "d$(die_size)",\
  "action": {\
    "type": "run_command",\
    "command": "trigger mojodice.event.roll_die set $(die_size)"\
  }\
}