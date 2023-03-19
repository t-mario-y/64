kbd = Keyboard.new

kbd.init_pins(
  [14], # rows
  [15] # columns
)

kbd.add_layer :default, %i(
  KC_Q
)

kbd.start!
