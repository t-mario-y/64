kbd = Keyboard.new

kbd.init_pins(
  [14, 15], # rows
  [17, 16] # columns
)

kbd.add_layer :default, %i(
  KC_Q  KC_W
  KC_A  KC_S
)

kbd.start!
