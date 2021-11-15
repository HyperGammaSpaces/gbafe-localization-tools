# gbafe-localization-tools
A suite of tools for assisting in creation of GBAFE mods and translations in languages other than English.

This repository is designed for use with buildfiles, but pieces of it can be imported via FEBuilder's "Install EA".

### How to use
You will need your own FE8 (USA, Australia) saved as "FE8_clean.gba" in the root directory.

Two example buildfiles and MAKEHACKs are provided. The example buildfiles are just a wrapper for `CoreBuildfile.event` with a language variable defined. To add new languages, simply clone the `\Text\_English` folder to put your text definitions in, then clone `_MAKE_HACK_EN.cmd` and replace all instances of `_EN` with your locale and `_English` with your language's text folder name.

**(WIP)** You will also need to add your language to the Master_Graphic_Installer and the CoreBuildfile, waiting on a feature request to Event Assembler to support this scalably before writing instructions
