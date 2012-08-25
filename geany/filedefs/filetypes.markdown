# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
default=0xAAFF57;0x1E1E1E;false;false
strong=0xFFEA64;0x1E1E1E;true;false
emphasis=0xFFEA64;0x1E1E1E;false;true
header1=0x00BBFF;0x161616;true;false
header2=0x00BBFF;0x161616;true;false
header3=0x00BBFF;0x161616;true;false
header4=0x00BBFF;0x161616;true;false
header5=0x00BBFF;0x161616;true;false
header6=0x00BBFF;0x161616;true;false
ulist_item=0x98BAC5;0x1E1E1E;false;false
olist_item=0x98BAC5;0x1E1E1E;false;false
blockquote=0xFF7357;0x1E1E1E;false;false
strikeout=0xFF7357;0x1E1E1E;false;false
hrule=0xFF901E;0x1E1E1E;false;false
link=0x4575B6;0x1E1E1E;false;false
code=0xDFDFDF;0x333333;false;false
codebk=0x121212;0xE5E5E5;false;false

[settings]
# default extension used when saving files
# There's currently no consensus on what this is supposed to be: .text, .mdwn, .md, .mdt, .mkd, .markdown are all used. I'm going for the most obvious one
extension=md

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=markdown "%f" > "%e".html
run_cmd=markdown "%f" > "%e".html && firefox "%e".html

[build-menu]
# opciones en el menu de construir
FT_00_LB=_Compilar
FT_00_CM=echo '<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"></head><body>' > "%e".html && markdown "%f" >> "%e".html && echo '</body></html>' >> "%e".html && firefox "%e".html
FT_00_WD=
