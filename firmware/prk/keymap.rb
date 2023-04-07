kbd = Keyboard.new

kbd.split = true
kbd.uart_pin = 15
kbd.set_anchor(:left)

kbd.init_pins(
  [14, 13, 12, 11, 10], # rows
  [ 0,  1,  2,  3,  7,  8,  9] # columns
)

# Row01-----Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row14-----Row13-----Row12-----Row11-----Row10-----Row09-----Row08-----
kbd.add_layer :default, %i(
  KC_ESC    KC_1      KC_2      KC_3      KC_4      KC_5      KC_MINS   KC_GRV    KC_0      KC_9      KC_8      KC_7      KC_6      KC_EQL
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   KC_BSPC   KC_P      KC_O      KC_I      KC_U      KC_Y      KC_RBRC
  KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   KC_QUOT   KC_SCLN   KC_L      KC_K      KC_J      KC_H      KC_SLSH
  KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG2  KC_RSFT   KC_HOME   KC_DOT    KC_COMM   KC_M      KC_N      KC_LANG1
  KC_NO     KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    KC_NO     KC_NO     KC_NO     KC_END    KC_RALT   RAISE     KC_ENT
)
# Row01-----Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row14-----Row13-----Row12-----Row11-----Row10-----Row09-----Row08-----
kbd.add_layer :lower, %i(
  KC_ESC    KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_F11    KC_GRV    KC_F10    KC_F9     KC_F8     KC_F7     KC_F6     KC_F12
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   KC_BSPC   KC_P      KC_O      KC_I      KC_U      KC_Y      KC_RBRC
  KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   KC_QUOT   KC_SCLN   KC_RIGHT  KC_UP     KC_DOWN   KC_LEFT   KC_SLSH
  KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG2  KC_RSFT   KC_HOME   KC_DOT    KC_COMM   KC_M      KC_N      KC_LANG1
  KC_NO     KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    KC_NO     KC_NO     KC_NO     KC_END    KC_RALT   RAISE     KC_ENT
)
# Row01-----Row02-----Row03-----Row04-----Row05-----Row06-----Row07-----Row14-----Row13-----Row12-----Row11-----Row10-----Row09-----Row08-----
kbd.add_layer :raise, %i(
  KC_ESC    KC_1      KC_2      KC_3      KC_4      KC_5      KC_MINS   KC_GRV    KC_0      KC_9      KC_8      KC_7      KC_6      KC_EQL
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_LBRC   KC_DEL    KC_P      KC_O      KC_I      KC_U      KC_Y      KC_RBRC
  KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      KC_BSLS   KC_QUOT   KC_SCLN   KC_RIGHT  KC_UP     KC_DOWN   KC_LEFT   KC_SLSH
  KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LANG2  KC_RSFT   KC_HOME   KC_DOT    KC_COMM   KC_M      KC_N      KC_LANG1
  KC_NO     KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_SPC    KC_NO     KC_NO     KC_NO     KC_END    KC_RALT   RAISE     KC_ENT
)

kbd.define_mode_key :LOWER, [nil, :lower, nil, nil]
kbd.define_mode_key :RAISE, [nil, :raise, nil, nil]

kbd.start!
