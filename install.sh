#!/bin/zsh
# Add custom key map to system file with swedish layouts.
sudo zsh -c 'cat key_map.txt >> /usr/share/X11/xkb/symbols/se'

# Add variant infomation to evdev.xml
sudo sed -i '/>swe</{
:a                          
N                                                  
/<variantList>/!ba                                                                  
revdev_variant.lst
}
' /usr/share/X11/xkb/rules/evdev.xml

# Add variant infomation to evdev.lst
sudo sed -i '/\! variant/a US_swe		se: US (Swedish) ' /usr/share/X11/xkb/rules/evdev.lst
