set "textprocess=%~dp0Tools\TextProcess\text-process-classic.py"
set "parsefile=%~dp0Tools\ParseFile\ParseFile.exe"

cd %~dp0
copy "FE8_clean.gba" "FE_translate.gba"
cd "%~dp0Definitions"
py MakeParseDefs.py "PortraitDefinitions.event" ParseDefinitions.txt ../Text/ParseDefinitions.txt Portrait_
cd "%~dp0Tables"
echo: | (c2ea "%~dp0FE8_clean.gba")
cd "%~dp0Text"
echo: | ("%textprocess%" _English/text_buildfile.txt --parser-exe "%parsefile%" --depends "ParseDefinitions.txt" --installer "_English/InstallTextData.event" --definitions "_English/TextDefinitions.event")
cd "%~dp0Maps"
echo: | (tmx2ea -s)
cd "%~dp0EventAssembler"
ColorzCore A FE8 "-output:%~dp0FE_translate.gba" "-input:%~dp0Buildfile_EN.event" "--nocash-sym"
cd "%~dp0sym"
java -jar %~dp0sym\SymCombo.jar "%~dp0FE_translate.sym" "Stan.sym"

cd "%~dp0ups"
ups diff -b "%~dp0FE8_clean.gba" -m "%~dp0FE_translate.gba" -o "FE_translate_EN.ups"
pause