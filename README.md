# US keyboard with Swedish letters

US layout but with access to åäö by using 'ALT + ;', 'ALT + "' and 'ALT + ['.

## Installation
There are two installation methods, a manual and an automatic one which performs the same
tasks as the manual steps. The install-script has been tested on Arch and Ubuntu, but I give no granties and takes no responsebility if something breaks.
### Automatic
0. Clone this repo.

```
git clone https://github.com/eliasaronson/US-keyboard-with-Swedish-letters.git && US-keyboard-with-Swedish-letters
```

1. Run the install-script. This changes keyboard system files and requires superuser privalage.
```
./install.sh
```

2. To activate the new layout run:
```
setxkbmap -layout se -variant US_swe
```

## Manual
0. Clone this repo.
```
git clone https://github.com/eliasaronson/US-keyboard-with-Swedish-letters.git && US-keyboard-with-Swedish-letters
```

1. Add the contents of key_map.txt to the end of /usr/share/X11/xkb/symbols/se.

2. Look up the following section in the file /usr/share/X11/xkb/rules/evdev.xml:

```
<layout>
 <configItem>
   <name>se</name>
     <shortDescription>Swe</shortDescription>
     <description>Sweden</description>
     <languageList><iso639Id>swe</iso639Id></languageList>
  </configItem>
  <variantList>
```

3. Add the following variant below <variantList>.

```
<variant>
  <configItem>
    <name>US_swe</name>
    <description>US (Swedish)</description>
  </configItem>
</variant>
```

4. After the line "! variant" in the file /usr/share/X11/xkb/rules/evdev.lst *  add the following:

```
US_swe		se: US (Swedish)
```

5. To activate the new layout run:

```
setxkbmap -layout se -variant US_swe
```

## Notes
* On some older systems the path to evdev.lst is /usr/share/X11/skb/rules/evdev.lst instead.
* If you want to costumise the keys all mappings are set in key_map.txt.
