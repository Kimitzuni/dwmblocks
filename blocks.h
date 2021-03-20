//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	
	{ " ", "~/.scripts/pkgcheck.sh", 7200, 0 },
//	{ "", "~/.scripts/battery.sh", 25, 0},  // Uncomment this if you use a laptop.
	{ "", "~/.scripts/time.sh", 30, 0},
};
//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
