
convert david.png -modulate 100,0 davidbw.png
convert davidbw.png -colors 2 davidcol2.png
convert davidcol2.png -depth 1 daviddep1.png
convert daviddep1.png david.xpm
