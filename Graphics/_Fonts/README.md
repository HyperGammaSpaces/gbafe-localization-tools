# Font Installation

Font installation also covers character mapping, which is why it's included in the localization repo.

### Languages with writing systems compatible with a single-byte encoding

##### cp1250 (Central and Eastern European)

Under consideration; demand unknown. Would cover Polish, Czech, Slovak, Slovene, Hungarian, Albanian, and Latin-alphabet Serbo-Croatian.

##### cp1251 (Cyrillic)

Under consideration; demand exists. Would cover Russian, Ukrainian, Belarusian, Bulgarian, Macedonian, and Cyrillic-alphabet Serbian.

##### cp1252 (Western European)

Implemented partially by default in FE7E, FE8U, and FE8E to cover English, French, Spanish, Italian, German. Dutch was also covered.

A complete implementation is included with this repo, to extend coverage to Portuguese, Swedish, Norwegian, Icelandic, Finnish, and Irish.

##### cp1253 (Greek)

Under consideration; demand unknown.

##### cp1254 (Turkish)

Implemented. Includes 6 unique characters not covered by cp1252.

##### cp1255 (Hebrew)

Under consideration; demand unknown.

##### cp1256 (Arabic)

Under consideration; at least one FE hack is known to use Arabic.

##### cp1257 (Baltic)

Under consideration; demand unknown. Complete coverage of Estonian, Latvian, Lithuanian, and Danish.

##### cp1258 (Vietnamese)

Planned; has been directly requested for support.
Windows-1258 is preferred over VSCII due to preservation of 8x and 9x range for quote marks and 0x and 1x range for text control codes.

### Languages with multibyte characters

##### Japanese

FE6J/FE7J/FE8J appear to use Shift-JIS encoding. The simplest approach would likely be porting over the FE8J system to FE8U.

##### Chinese (Simplified, Traditional)

I don't yet have much insight into how Chinese text has historically been inserted into GBAFE. Will likely use Unicode, using the DrawMultiByteFont patch.

##### Korean

Will likely use Unicode, using the DrawMultiByteFont patch.
