kbd = Keyboard.new

kbd.split = true
kbd.uart_pin = 0

kbd.init_pins(
  [14, 15], # rows
  [17, 16] # columns
)

kbd.add_layer :default, %i(
  KC_Q  KC_W  KC_E  KC_R
  KC_A  KC_S  KC_D  KC_F
)

kbd.start!
