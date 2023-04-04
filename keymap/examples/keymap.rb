kbd = Keyboard.new

kbd.split = true
kbd.uart_pin = 15

kbd.init_pins(
  [ 7,  8], # rows
  [14, 26] # columns
)

kbd.add_layer :default, %i(
  KC_Q     KC_W     KC_E   KC_R
  KC_A     LOWER    RAISE  KC_F
)

kbd.add_layer :lower, %i(
  KC_1     KC_2     KC_3   KC_4
  KC_5     LOWER    RAISE  KC_6
)

kbd.add_layer :raise, %i(
  KC_LEFT  KC_DOWN  KC_UP  KC_RIGHT
  KC_S     LOWER    RAISE  KC_D
)

kbd.define_mode_key :LOWER, [nil, :lower, nil, nil]
kbd.define_mode_key :RAISE, [nil, :raise, nil, nil]

kbd.start!
