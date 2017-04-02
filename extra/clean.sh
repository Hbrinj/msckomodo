sed "s/\"//g" david.xpm | sed "s/,//g"| sed "s/\n//g" | sed "s/\r//g" | sed "s/ /\*/g" | sed "s/\./SWI 2\n/g" | sed "s/\*/NOP\n/g" > david.out
