## Text Will Be Text ##

This is a plugin for [Dwarf Fortress](http://bay12games.com) / [DFHack](http://github.com/dfhack/dfhack) that improves various aspects the game interface.

Originally I wrote a small plugin because I was tired seeing coffins instead of zeroes and all that stuff. It has greately evolved since then. Requires OpenGL PRINT_MODE (STANDARD or VBO). Some functions may not work or have issues in Adventurer Mode.

### Features ###

[Text and Map Tilesets](#text-and-map-tilesets)  
Use separate fonts for text and map, possibly with different tile size.

[Overrides](#overrides)  
Change images used for specific buildings, items and tile types.

[Multi-level Rendering](#multi-level-rendering)

[Additional Colours](#additional-colours)

[Colormap Manipulation](#colormap-manipulation)  
Change and reload colours without restarting the game.

[Mapshot!](#mapshot)  
A command to save full-size screenshot of the map.

[Other Improvements](#other-improvements)

[Authors and Links](#authors-and-links)

### Authors and Links ###

Vitaly Pronkin aka mifki <pronvit@me.com>

[Home Page / Sources](https://github.com/mifki/df-twbt) -- [Latest Release](https://github.com/mifki/df-twbt/releases) -- [Discussion](http://www.bay12forums.com/smf/index.php?topic=138754.0) -- [Report an Issue](https://github.com/mifki/df-twbt/issues)

### Text and Map Tilesets ###

Main function is to use separate fonts (tilesets) for map tiles in Fortress Mode and for text. These fonts may have different tile size, usually square for the map and non-square for text.

In your `init.txt` set FONT and FULLFONT to the font you want to use for **text**, and GRAPHICS\_FONT and GRAPHICS\_FULLFONT to the font for **map tiles**.

`twbt tilesize` command adjust the size of map tiles. Possible parameters are `bigger`, `smaller` or exact values `<width> <height>`.

### Overrides ###

Allows to override tile numbers for buildings and items, see `overrides.txt` for details.

### Multi-level Rendering ###

Copy `shadows.png` to `data/art` folder.

`multilevel` command sets the number of additional levels to render. Possible parameters are `more`, `less` or number `0-15`.

`multilevel shadowcolor <r> <g> <b> <a>` command sets shadow colour. Components are in range `0-1`. Default is `0 0 0 0.4`.

`multilevel fogcolor <r> <g> <b>` command sets fog colour. Default is `0.1 0.1 0.3`.

`multilevel fogdensity <d>` command sets fog density. Default is `0.15`.

### Additional Colours ###

Not yet.

### Colormap Manipulation ###

`colormap <colorname> <r> <g> <b>` command changes display colours. Colour names are as in `init/colors.txt` without `_R/G/B` suffix. Components are in range `0-255`. If no new values are provided, current values are printed.

`colormap reload` command reloads all colours from `init/colors.txt`.

### Mapshot! ###

`mapshot` command saves an image of entire map in full size to `mapshot.tga` in your DF folder.

### Other Improvements ###

Trade screen divided equally on OS X.

