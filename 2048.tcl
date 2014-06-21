
package require Tk;

wm title . "2048";
wm minsize . 700 730;

destroy .main;

ttk::style theme use clam;

#
#Creating the Main game window and title
#

grid [ttk::frame .main -padding "100 40 100 100"] -row 0 -column 0 -sticky nswe;
grid [ttk::label .main.title -text "2048 Game" -font "Courier 40 underline bold" -justify center -style title.TLabel] -columnspan 2 -pady 15 -row 0 -column 0;
grid [ttk::frame .main.game -padding 0 -style game.TFrame -relief sunken -borderwidth 10] -row 1 -column 0 -columnspan 2 -sticky nswe;
ttk::style configure game.TFrame -background #B8B8B8;


#
#Setting variables for different point colors 
#

set bg "#B8B8B8"; #background
set c1 "#CDCDCD"; #2
set c2 "#E4E4DE"; #4
set c3 "#E69C78"; #8
set c4 "#C16A30"; #16
set c5 "#CF5B5B"; #32
set c6 "#BC1616"; #64
set c7 "#FFE6B5"; #128
set c8 "#E6C43E"; #256
set c9 "#D1B649"; #512
set c10 "#BCA442"; #1024
set c11 "#FF0066"; #2048

#
#Width and Height of Containers 
#

set wid 115;
set hig 115;

#
#set padding values 
#

set padx 7;
set pady 7;

#
#Creating Containers 
#
#Row 1
#

set img [image create photo tileEmpty -file "img/empty.gif"];
set twoPoints [image create photo tileTwo -file "img/tile2.gif"];
set fourPoints [image create photo tileFour -file "img/tile4.gif"];
set eightPoints [image create photo tileEight -file "img/tile8.gif"];
set sixteenPoints [image create photo tileSixteen -file "img/tile16.gif"];
set thirtytwoPoints [image create photo tileThirtytwo -file "img/tile32.gif"];
set sixtyfourPoints [image create photo tileSixtyfour -file "img/tile64.gif"];
set onetwentyeightPoints [image create photo tileOnetwentyeight -file "img/tile128.gif"];
set twofiftysixPoints [image create photo tileTwofiftysix -file "img/tile256.gif"];
set fivetwelvePoints [image create photo tileFivetwelve -file "img/tile512.gif"];
set onethousandtwentyfourPoints [image create photo tileOnethousandtwentyfour -file "img/tile1024.gif"];
set twentyfourtyeightPoints [image create photo tileTwothousandfourtyeight -file "img/tile2048.gif"];

set b1 [ttk::label .main.game.box1 -width $wid -style a.TLabel -image $img -compound none]; 
grid $b1 -row 0 -column 0 -padx $padx -pady $pady -sticky nswe;
ttk::style configure a.TLabel -background $bg;

set b2 [ttk::label .main.game.box2 -width $wid -style b.TLabel -image $img -compound none]; 
grid $b2 -row 0 -column 1 -padx $padx -pady $pady -sticky nswe;
ttk::style configure b.TLabel -background $bg;

set b3 [ttk::label .main.game.box3 -width $wid -style c.TLabel -image $img -compound none]; 
grid $b3 -row 0 -column 2 -padx $padx -pady $pady -sticky nswe;
ttk::style configure c.TLabel -background $bg;

set b4 [ttk::label .main.game.box4 -width $wid -style d.TLabel -image $img -compound none]; 
grid $b4 -row 0 -column 3 -padx $padx -pady $pady -sticky nswe;
ttk::style configure d.TLabel -background $bg;
#
#Row 2
#

set b5 [ttk::label .main.game.box5 -width $wid -style e.TLabel -image $img -compound none]; 
grid $b5 -row 1 -column 0 -padx $padx -pady $pady -sticky nswe;
ttk::style configure e.TLabel -background $bg;

set b6 [ttk::label .main.game.box6 -width $wid -style f.TLabel -image $img -compound none]; 
grid $b6 -row 1 -column 1 -padx $padx -pady $pady -sticky nswe;
ttk::style configure f.TLabel -background $bg;

set b7 [ttk::label .main.game.box7 -width $wid -style g.TLabel -image $img -compound none]; 
grid $b7 -row 1 -column 2 -padx $padx -pady $pady -sticky nswe;
ttk::style configure g.TLabel -background $bg;

set b8 [ttk::label .main.game.box8 -width $wid -style h.TLabel -image $img -compound none]; 
grid $b8 -row 1 -column 3 -padx $padx -pady $pady -sticky nswe;
ttk::style configure h.TLabel -background $bg;

#
#Row 3
#

set b9 [ttk::label .main.game.box9 -width $wid -style i.TLabel -image $img -compound none]; 
grid $b9 -row 2 -column 0 -padx $padx -pady $pady -sticky nswe;
ttk::style configure i.TLabel -background $bg;

set ba [ttk::label .main.game.boxa -width $wid -style j.TLabel -image $img -compound none]; 
grid $ba -row 2 -column 1 -padx $padx -pady $pady -sticky nswe;
ttk::style configure j.TLabel -background $bg;

set bb [ttk::label .main.game.boxb -width $wid -style k.TLabel -image $img -compound none]; 
grid $bb -row 2 -column 2 -padx $padx -pady $pady -sticky nswe;
ttk::style configure k.TLabel -background $bg;

set bc [ttk::label .main.game.boxc -width $wid -style l.TLabel -image $img -compound none]; 
grid $bc -row 2 -column 3 -padx $padx -pady $pady -sticky nswe;
ttk::style configure l.TLabel -background $bg;

#
#Row 4
#

set bd [ttk::label .main.game.boxd -width $wid -style m.TLabel -image $img -compound none]; 
grid $bd -row 3 -column 0 -padx $padx -pady $pady -sticky nswe;
ttk::style configure m.TLabel -background $bg;

set be [ttk::label .main.game.boxe -width $wid -style n.TLabel -image $img -compound none]; 
grid $be -row 3 -column 1 -padx $padx -pady $pady -sticky nswe;
ttk::style configure n.TLabel -background $bg;

set bf [ttk::label .main.game.boxf -width $wid -style o.TLabel -image $img -compound none]; 
grid $bf -row 3 -column 2 -padx $padx -pady $pady -sticky nswe;
ttk::style configure o.TLabel -background $bg;

set bh [ttk::label .main.game.boxh -width $wid -style p.TLabel -image $img -compound none]; 
grid $bh -row 3 -column 3 -padx $padx -pady $pady -sticky nswe;
ttk::style configure p.TLabel -background $bg;

#
#Creating the controls 
#

grid [ttk::button .main.start -text "Start Game" -command {startGame board boardCells numSpotsLeft numMoves} -style start.TButton] -padx 2 -pady 5 -row 2 -column 0 -sticky we;
ttk::style configure start.TButton -font "Courier 15 bold";
ttk::style map start.TButton \
	-background [list disabled #FFECDA  active #FFC285] \
	-foreground [list disabled #B2B2B2 active white] \
	-relief [list {pressed !disabled} sunken] \
	;

grid [ttk::label .main.moves -textvariable moves -font {Courier 20 bold} -justify center -style moves.TLabel] -padx 2 -row 2 -column 1 -sticky we;
ttk::style configure moves.TLabel -background #CCC2BB;
ttk::style configure moves.TLabel -foreground white;

grid [ttk::label .main.desc -text "Use the Up, Down, Left, and Right arrow \nkeys to move the tiles and combine the numbers to get 2048!" -justify center -font {Courier 10 bold}] -row 3 -column 0 -pady 5 -columnspan 2;

#
#Set bindings for arrow keys
#

set numMoves 0;
set ::moves "Moves: $numMoves";

bind . <Left> {
	if {$gameStarted eq true} {
		if {$numSpotsLeft > 0} {
			incr numMoves
			}
	moveTiles 1 0 0 0 board boardCells;
	combineTiles 1 0 0 0 board boardCells numSpotsLeft;
	moveTiles 1 0 0 0 board boardCells;
	.main.start configure -text "Start Over"; #once game starts, change button text
	
	updateTiles board boardCells;
	after 250 {
	generateNumber board numSpotsLeft;
	updateTiles board boardCells;
	}
	set ::moves "Moves: $numMoves";
		if {[checkForLoss board] == 1} {
			tk_messageBox -type "ok" -message "Unable to make any more moves; Game Over" -icon "info" -title "Game Over"
		}
	}
}

bind . <Right> {
	if {$gameStarted eq true} {
		if {$numSpotsLeft > 0} {
			incr numMoves
			}
	moveTiles 0 0 1 0 board boardCells;
	combineTiles 0 0 1 0 board boardCells numSpotsLeft;
	moveTiles 0 0 1 0 board boardCells;
	.main.start configure -text "Start Over"; #once game starts, change button text
	
	updateTiles board boardCells;
	after 250 {
	generateNumber board numSpotsLeft;
	updateTiles board boardCells;
	}
	
	set ::moves "Moves: $numMoves";
	if {[checkForLoss board] == 1} {
			tk_messageBox -type "ok" -message "Unable to make any more moves; Game Over" -icon "info" -title "Game Over"
		}
	}
}

bind . <Up> {
	if {$gameStarted eq true} {
		if {$numSpotsLeft > 0} {
			incr numMoves;
			}
	moveTiles 0 1 0 0 board boardCells;
	combineTiles 0 1 0 0 board boardCells numSpotsLeft;
	moveTiles 0 1 0 0 board boardCells;
	.main.start configure -text "Start Over"; #once game starts, change button text
	
	updateTiles board boardCells;
	after 250 {
	generateNumber board numSpotsLeft;
	updateTiles board boardCells;
	}
		
	set ::moves "Moves: $numMoves";
	if {[checkForLoss board] == 1} {
			tk_messageBox -type "ok" -message "Unable to make any more moves; Game Over" -icon "info" -title "Game Over"
		}
	}
}

bind . <Down> {
	if {$gameStarted eq true} {
		if {$numSpotsLeft > 0} {
			incr numMoves
			}
	moveTiles 0 0 0 1 board boardCells;
	combineTiles 0 0 0 1 board boardCells numSpotsLeft;
	moveTiles 0 0 0 1 board boardCells;
	.main.start configure -text "Start Over"; #once game starts, change button text
	
	updateTiles board boardCells;
	after 250 {
	generateNumber board numSpotsLeft;
	updateTiles board boardCells;
	}
	
	set ::moves "Moves: $numMoves";
	if {[checkForLoss board] == 1} {
			tk_messageBox -type "ok" -message "Unable to make any more moves; Game Over" -icon "info" -title "Game Over"
		}
	}
}

bind .main.start <1> {
	if {[.main.start cget -text] eq "Start Game"} {
		set gameStarted true;
		generateNumber board numSpotsLeft;
		updateTiles board boardCells;
		generateNumber board numSpotsLeft;
		updateTiles board boardCells;
		.main.start configure -text "Start Over";
	} else { set gameStarted false
		}
}

#
#Game Data
#
for {set i 0} {$i < 16} {incr i} {
	set board($i) 0;  					#Array of the game board - 0 means empty square 
}

set boardCells(0) $b1;
set boardCells(1) $b2;
set boardCells(2) $b3;
set boardCells(3) $b4;
set boardCells(4) $b5;
set boardCells(5) $b6;
set boardCells(6) $b7;
set boardCells(7) $b8;
set boardCells(8) $b9;
set boardCells(9) $ba;
set boardCells(10) $bb;
set boardCells(11) $bc;
set boardCells(12) $bd;
set boardCells(13) $be;
set boardCells(14) $bf;
set boardCells(15) $bh;

set numSpotsLeft 16;

set gameStarted false;
#
#Generate random 2s and 4s tiles 
#

proc generateNumber {board numSpotsLeft} {
	upvar $numSpotsLeft mySpots;
	upvar $board myBoard;
	set isFull 1;
	while {$isFull} { 
		if {$mySpots == 0} {break
		} else {
		set randNum [expr {int(rand() * 20)}];
		if {$randNum < 16} {
			if {$myBoard($randNum) == 0} {
				set isFull 0;
				set randTile [expr {int(rand() * 10)}];
				if {$randTile < 7} {
					set myBoard($randNum) 2;
					} else { 
					set myBoard($randNum) 4;
					}
				set mySpots [expr $mySpots - 1];
			}
		}
	}
	}
}

proc updateTiles {board boardCells} { 
	upvar $board myBoard;
	upvar $boardCells myBoardCells;
	for {set i 0} {$i < 16} {incr i} {
		if {$myBoard($i) == 2} {
			$myBoardCells($i) configure -image $::twoPoints;
		} 
		
		if {$myBoard($i) == 4} {
			$myBoardCells($i) configure -image $::fourPoints;
		}
		
		if {$myBoard($i) == 8} {
			$myBoardCells($i) configure -image $::eightPoints;
		}
		
		if {$myBoard($i) == 16} {
			$myBoardCells($i) configure -image $::sixteenPoints;
		}
		
		if {$myBoard($i) == 32} {
			$myBoardCells($i) configure -image $::thirtytwoPoints;
		}
		
		if {$myBoard($i) == 64} {
			$myBoardCells($i) configure -image $::sixtyfourPoints;
		}
		
		if {$myBoard($i) == 128} {
			$myBoardCells($i) configure -image $::onetwentyeightPoints;
		}
		
		if {$myBoard($i) == 256} {
			$myBoardCells($i) configure -image $::twofiftysixPoints;
		}
		
		if {$myBoard($i) == 512} {
			$myBoardCells($i) configure -image $::fivetwelvePoints;
		}
		
		if {$myBoard($i) == 1024} {
			$myBoardCells($i) configure -image $::onethousandtwentyfourPoints;
		}
		
		if {$myBoard($i) == 2048} {
			$myBoardCells($i) configure -image $::twentyfourtyeightPoints;
		}
		
		if {$myBoard($i) == 0} {
			$myBoardCells($i) configure -image $::img;
		}
	}
}


#
#Starting the game
#

proc startGame {board boardCells numSpotsLeft numMoves} {
	upvar $numMoves myMoves; 
	if {$myMoves > 0} {
		set response [tk_messageBox -type "yesno" -message "Start game over and lose all progress?" -icon "warning" -title 2048];
		if {$response eq yes} {
			if {[.main.start cget -text] eq "Start Over"} {
				.main.start configure -text "Start Game";
			}
			
			upvar $board myBoard;
			upvar $boardCells myBoardCells;
			upvar $numSpotsLeft myNumSpotsLeft;
			
			for {set i 0} {$i < 16} {incr i} {
				if {$myBoard($i) != 0} {
				set myBoard($i) 0;
				$myBoardCells($i) configure -image $::img;
				set myNumSpotsLeft [expr $myNumSpotsLeft + 1];
				} 
			}
			
			set myMoves 0;
			set ::moves "Moves: $myMoves";
		
		}
	} 
}

#
#Move the tiles on arrow key press 
#

proc moveTiles {left up right down board boardCells} {
	upvar $board myBoard;
	upvar $boardCells myBoardCells;
	
	for {set i 0} {$i < 3} {incr i} {
		if {$left == 1} {puts "Left"
			if {$myBoard(0) == 0} {set myBoard(0) $myBoard(1)
				set myBoard(1) 0}
			if {$myBoard(1) == 0} {set myBoard(1) $myBoard(2)
				set myBoard(2) 0};
			if {$myBoard(2) == 0} {set myBoard(2) $myBoard(3)
				set myBoard(3) 0};	
			if {$myBoard(4) == 0} {set myBoard(4) $myBoard(5)
				set myBoard(5) 0}
			if {$myBoard(5) == 0} {set myBoard(5) $myBoard(6)
				set myBoard(6) 0};
			if {$myBoard(6) == 0} {set myBoard(6) $myBoard(7)
				set myBoard(7) 0};
			if {$myBoard(8) == 0} {set myBoard(8) $myBoard(9)
				set myBoard(9) 0}
			if {$myBoard(9) == 0} {set myBoard(9) $myBoard(10)
				set myBoard(10) 0};
			if {$myBoard(10) == 0} {set myBoard(10) $myBoard(11)
				set myBoard(11) 0};
			if {$myBoard(12) == 0} {set myBoard(12) $myBoard(13)
				set myBoard(13) 0}
			if {$myBoard(13) == 0} {set myBoard(13) $myBoard(14)
				set myBoard(14) 0};
			if {$myBoard(14) == 0} {set myBoard(14) $myBoard(15)
				set myBoard(15) 0};
		}
		if {$up == 1} {puts "Up"
			if {$myBoard(0) == 0} {set myBoard(0) $myBoard(4)
				set myBoard(4) 0}
			if {$myBoard(4) == 0} {set myBoard(4) $myBoard(8)
				set myBoard(8) 0};
			if {$myBoard(8) == 0} {set myBoard(8) $myBoard(12)
				set myBoard(12) 0};	
			if {$myBoard(1) == 0} {set myBoard(1) $myBoard(5)
				set myBoard(5) 0}
			if {$myBoard(5) == 0} {set myBoard(5) $myBoard(9)
				set myBoard(9) 0};
			if {$myBoard(9) == 0} {set myBoard(9) $myBoard(13)
				set myBoard(13) 0};
			if {$myBoard(2) == 0} {set myBoard(2) $myBoard(6)
				set myBoard(6) 0}
			if {$myBoard(6) == 0} {set myBoard(6) $myBoard(10)
				set myBoard(10) 0};
			if {$myBoard(10) == 0} {set myBoard(10) $myBoard(14)
				set myBoard(14) 0};
			if {$myBoard(3) == 0} {set myBoard(3) $myBoard(7)
				set myBoard(7) 0}
			if {$myBoard(7) == 0} {set myBoard(7) $myBoard(11)
				set myBoard(11) 0};
			if {$myBoard(11) == 0} {set myBoard(11) $myBoard(15)
				set myBoard(15) 0};
		}
		if {$right == 1} {puts "Right"
			if {$myBoard(3) == 0} {set myBoard(3) $myBoard(2)
				set myBoard(2) 0}
			if {$myBoard(2) == 0} {set myBoard(2) $myBoard(1)
				set myBoard(1) 0};
			if {$myBoard(1) == 0} {set myBoard(1) $myBoard(0)
				set myBoard(0) 0};	
			if {$myBoard(7) == 0} {set myBoard(7) $myBoard(6)
				set myBoard(6) 0}
			if {$myBoard(6) == 0} {set myBoard(6) $myBoard(5)
				set myBoard(5) 0};
			if {$myBoard(5) == 0} {set myBoard(5) $myBoard(4)
				set myBoard(4) 0};
			if {$myBoard(11) == 0} {set myBoard(11) $myBoard(10)
				set myBoard(10) 0}
			if {$myBoard(10) == 0} {set myBoard(10) $myBoard(9)
				set myBoard(9) 0};
			if {$myBoard(9) == 0} {set myBoard(9) $myBoard(8)
				set myBoard(8) 0};
			if {$myBoard(15) == 0} {set myBoard(15) $myBoard(14)
				set myBoard(14) 0}
			if {$myBoard(14) == 0} {set myBoard(14) $myBoard(13)
				set myBoard(13) 0};
			if {$myBoard(13) == 0} {set myBoard(13) $myBoard(12)
				set myBoard(12) 0};
		}
		if {$down == 1} {puts "Down"
			if {$myBoard(12) == 0} {set myBoard(12) $myBoard(8)
				set myBoard(8) 0}
			if {$myBoard(8) == 0} {set myBoard(8) $myBoard(4)
				set myBoard(4) 0}
			if {$myBoard(4) == 0} {set myBoard(4) $myBoard(0)
				set myBoard(0) 0}
			if {$myBoard(13) == 0} {set myBoard(13) $myBoard(9)
				set myBoard(9) 0}
			if {$myBoard(9) == 0} {set myBoard(9) $myBoard(5)
				set myBoard(5) 0}
			if {$myBoard(5) == 0} {set myBoard(5) $myBoard(1)
				set myBoard(1) 0}
			if {$myBoard(14) == 0} {set myBoard(14) $myBoard(10)
				set myBoard(10) 0}
			if {$myBoard(10) == 0} {set myBoard(10) $myBoard(6)
				set myBoard(6) 0}
			if {$myBoard(6) == 0} {set myBoard(6) $myBoard(2)
				set myBoard(2) 0}
			if {$myBoard(15) == 0} {set myBoard(15) $myBoard(11)
				set myBoard(11) 0}
			if {$myBoard(11) == 0} {set myBoard(11) $myBoard(7)
				set myBoard(7) 0}
			if {$myBoard(7) == 0} {set myBoard(7) $myBoard(3)
				set myBoard(3) 0}
		}
	}

}

proc combineTiles {left up right down board boardCells numSpotsLeft} {
	upvar $board myBoard;
	upvar $boardCells myBoardCells;
	upvar $numSpotsLeft mySpots;

	for {set i 0} {$i < 4} {incr i} {
	set pos $i;
		if {$up == 1} {
			if {$myBoard($pos) == $myBoard([expr $pos + 4]) && $myBoard($pos) != 0} {
				if {$myBoard($pos) == 2} {
					set myBoard($pos) 4;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos) == 4} {
						set myBoard($pos) 8;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 8} {
						set myBoard($pos) 16;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 16} {
						set myBoard($pos) 32;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 32} {
						set myBoard($pos) 64;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 64} {
						set myBoard($pos) 128;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 128} {
						set myBoard($pos) 256;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 256} {
						set myBoard($pos) 512;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 512} {
						set myBoard($pos) 1024;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard($pos) == 1024} {
						set myBoard($pos) 2048;
						set myBoard([expr $pos + 4]) 0;
						set mySpots [expr $mySpots + 1];
						}
			} 
			if {$myBoard([expr $pos + 4]) == $myBoard([expr $pos + 8]) && $myBoard([expr $pos + 4]) != 0} {
				if {$myBoard([expr $pos + 4]) == 2} {
					set myBoard([expr $pos + 4]) 4;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 4} {
						set myBoard([expr $pos + 4]) 8;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 8} {
						set myBoard([expr $pos + 4]) 16;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 16} {
						set myBoard([expr $pos + 4]) 32;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 32} {
						set myBoard([expr $pos + 4]) 64;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 64} {
						set myBoard([expr $pos + 4]) 128;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 128} {
						set myBoard([expr $pos + 4]) 256;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 256} {
						set myBoard([expr $pos + 4]) 512;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 512} {
						set myBoard([expr $pos + 4]) 1024;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 4]) == 1024} {
						set myBoard([expr $pos + 4]) 2048;
						set myBoard([expr $pos + 8]) 0;
						set mySpots [expr $mySpots + 1];
						}
				} 
			if {$myBoard([expr $pos + 8]) == $myBoard([expr $pos + 12]) && $myBoard([expr $pos + 8]) != 0} {
				if {$myBoard([expr $pos + 8]) == 2} {
					set myBoard([expr $pos + 8]) 4;
					set myBoard([expr $pos + 12]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 4} {
						set myBoard([expr $pos + 8]) 8;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 8} {
						set myBoard([expr $pos + 8]) 16;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 16} {
						set myBoard([expr $pos + 8]) 32;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 32} {
						set myBoard([expr $pos + 8]) 64;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 64} {
						set myBoard([expr $pos + 8]) 128;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 128} {
						set myBoard([expr $pos + 8]) 256;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 256} {
						set myBoard([expr $pos + 8]) 512;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 512} {
						set myBoard([expr $pos + 8]) 1024;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						} elseif {$myBoard([expr $pos + 8]) == 1024} {
						set myBoard([expr $pos + 8]) 2048;
						set myBoard([expr $pos + 12]) 0;
						set mySpots [expr $mySpots + 1];
						}
				}
		}
		if {$down == 1} {
			if {$myBoard([expr $pos + 12]) == $myBoard([expr $pos + 8]) && $myBoard([expr $pos + 12]) != 0} {
				if {$myBoard([expr $pos + 12]) == 2} {
					set myBoard([expr $pos + 12]) 4;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos + 12]) == 4} {
					set myBoard([expr $pos + 12]) 8;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 8} {
					set myBoard([expr $pos + 12]) 16;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 16} {
					set myBoard([expr $pos + 12]) 32;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 32} {
					set myBoard([expr $pos + 12]) 64;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 64} {
					set myBoard([expr $pos + 12]) 128;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 128} {
					set myBoard([expr $pos + 12]) 256;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 256} {
					set myBoard([expr $pos + 12]) 512;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 512} {
					set myBoard([expr $pos + 12]) 1024;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 12]) == 1024} {
					set myBoard([expr $pos + 12]) 2048;
					set myBoard([expr $pos + 8]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos + 8]) == $myBoard([expr $pos + 4]) && $myBoard([expr $pos + 8]) != 0} {
				if {$myBoard([expr $pos + 8]) == 2} {
					set myBoard([expr $pos + 8]) 4;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos + 8]) == 4} {
					set myBoard([expr $pos + 8]) 8;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 8} {
					set myBoard([expr $pos + 8]) 16;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 16} {
					set myBoard([expr $pos + 8]) 32;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 32} {
					set myBoard([expr $pos + 8]) 64;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 64} {
					set myBoard([expr $pos + 8]) 128;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 128} {
					set myBoard([expr $pos + 8]) 256;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 256} {
					set myBoard([expr $pos + 8]) 512;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 512} {
					set myBoard([expr $pos + 8]) 1024;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 8]) == 1024} {
					set myBoard([expr $pos + 8]) 2048;
					set myBoard([expr $pos + 4]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos + 4]) == $myBoard($pos) && $myBoard([expr $pos + 4]) != 0} {
				if {$myBoard([expr $pos + 4]) == 2} {
					set myBoard([expr $pos + 4]) 4;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos + 4]) == 4} {
					set myBoard([expr $pos + 4]) 8;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 8} {
					set myBoard([expr $pos + 4]) 16;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 16} {
					set myBoard([expr $pos + 4]) 32;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 32} {
					set myBoard([expr $pos + 4]) 64;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 64} {
					set myBoard([expr $pos + 4]) 128;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 128} {
					set myBoard([expr $pos + 4]) 256;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 256} {
					set myBoard([expr $pos + 4]) 512;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 512} {
					set myBoard([expr $pos + 4]) 1024;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos + 4]) == 1024} {
					set myBoard([expr $pos + 4]) 2048;
					set myBoard($pos) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
		}
		
	}
	for {set i 0} {$i < 13} {set i [expr $i + 4]} {
	set pos2 $i;
	if {$left == 1} {
			if {$myBoard($pos2) == $myBoard([expr $pos2 + 1]) && $myBoard($pos2) != 0} {
				if {$myBoard($pos2) == 2} {
					set myBoard($pos2) 4;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard($pos2) == 4} {
					set myBoard($pos2) 8;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 8} {
					set myBoard($pos2) 16;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 16} {
					set myBoard($pos2) 32;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 32} {
					set myBoard($pos2) 64;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 64} {
					set myBoard($pos2) 128;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 128} {
					set myBoard($pos2) 256;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 256} {
					set myBoard($pos2) 512;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 512} {
					set myBoard($pos2) 1024;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard($pos2) == 1024} {
					set myBoard($pos2) 2048;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos2 + 1]) == $myBoard([expr $pos2 + 2]) && $myBoard([expr $pos2 + 1]) != 0} {
				if {$myBoard([expr $pos2 + 1]) == 2} {
					set myBoard([expr $pos2 + 1]) 4;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos2 + 1]) == 4} {
					set myBoard([expr $pos2 + 1]) 8;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 8} {
					set myBoard([expr $pos2 + 1]) 16;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 16} {
					set myBoard([expr $pos2 + 1]) 32;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 32} {
					set myBoard([expr $pos2 + 1]) 64;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 64} {
					set myBoard([expr $pos2 + 1]) 128;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 128} {
					set myBoard([expr $pos2 + 1]) 256;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 256} {
					set myBoard([expr $pos2 + 1]) 512;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 512} {
					set myBoard([expr $pos2 + 1]) 1024;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 1024} {
					set myBoard([expr $pos2 + 1]) 2048;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos2 + 2]) == $myBoard([expr $pos2 + 3]) && $myBoard([expr $pos2 + 2]) != 0} {
				if {$myBoard([expr $pos2 + 2]) == 2} {
					set myBoard([expr $pos2 + 2]) 4;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos2 + 2]) == 4} {
					set myBoard([expr $pos2 + 2]) 8;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 8} {
					set myBoard([expr $pos2 + 2]) 16;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 16} {
					set myBoard([expr $pos2 + 2]) 32;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 32} {
					set myBoard([expr $pos2 + 2]) 64;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 64} {
					set myBoard([expr $pos2 + 2]) 128;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 128} {
					set myBoard([expr $pos2 + 2]) 256;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 256} {
					set myBoard([expr $pos2 + 2]) 512;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 512} {
					set myBoard([expr $pos2 + 2]) 1024;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 1024} {
					set myBoard([expr $pos2 + 2]) 2048;
					set myBoard([expr $pos2 + 3]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			
		}
	if {$right == 1} {
			if {$myBoard([expr $pos2 + 3]) == $myBoard([expr $pos2 + 2]) && $myBoard([expr $pos2 + 3]) != 0} {
				if {$myBoard([expr $pos2 + 3]) == 2} {
					set myBoard([expr $pos2 + 3]) 4;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos2 + 3]) == 4} {
					set myBoard([expr $pos2 + 3]) 8;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 8} {
					set myBoard([expr $pos2 + 3]) 16;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 16} {
					set myBoard([expr $pos2 + 3]) 32;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 32} {
					set myBoard([expr $pos2 + 3]) 64;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 64} {
					set myBoard([expr $pos2 + 3]) 128;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 128} {
					set myBoard([expr $pos2 + 3]) 256;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 256} {
					set myBoard([expr $pos2 + 3]) 512;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 512} {
					set myBoard([expr $pos2 + 3]) 1024;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 3]) == 1024} {
					set myBoard([expr $pos2 + 3]) 2048;
					set myBoard([expr $pos2 + 2]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos2 + 2]) == $myBoard([expr $pos2 + 1]) && $myBoard([expr $pos2 + 2]) != 0} {
				if {$myBoard([expr $pos2 + 2]) == 2} {
					set myBoard([expr $pos2 + 2]) 4;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos2 + 2]) == 4} {
					set myBoard([expr $pos2 + 2]) 8;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 8} {
					set myBoard([expr $pos2 + 2]) 16;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 16} {
					set myBoard([expr $pos2 + 2]) 32;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 32} {
					set myBoard([expr $pos2 + 2]) 64;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 64} {
					set myBoard([expr $pos2 + 2]) 128;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 128} {
					set myBoard([expr $pos2 + 2]) 256;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 256} {
					set myBoard([expr $pos2 + 2]) 512;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 512} {
					set myBoard([expr $pos2 + 2]) 1024;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 2]) == 1024} {
					set myBoard([expr $pos2 + 2]) 2048;
					set myBoard([expr $pos2 + 1]) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
			if {$myBoard([expr $pos2 + 1]) == $myBoard($pos2) && $myBoard([expr $pos2 + 1]) != 0} {
				if {$myBoard([expr $pos2 + 1]) == 2} {
					set myBoard([expr $pos2 + 1]) 4;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
				} elseif {$myBoard([expr $pos2 + 1]) == 4} {
					set myBoard([expr $pos2 + 1]) 8;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 8} {
					set myBoard([expr $pos2 + 1]) 16;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 16} {
					set myBoard([expr $pos2 + 1]) 32;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 32} {
					set myBoard([expr $pos2 + 1]) 64;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 64} {
					set myBoard([expr $pos2 + 1]) 128;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 128} {
					set myBoard([expr $pos2 + 1]) 256;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 256} {
					set myBoard([expr $pos2 + 1]) 512;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 512} {
					set myBoard([expr $pos2 + 1]) 1024;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					} elseif {$myBoard([expr $pos2 + 1]) == 1024} {
					set myBoard([expr $pos2 + 1]) 2048;
					set myBoard($pos2) 0;
					set mySpots [expr $mySpots + 1];
					}
			}
		}
	}
}

proc checkForLoss {board} {
	upvar $board myBoard; 
	set loss 0;
	set numAvailable 0; 
	
	for {set i 0} {$i < 16} {incr i} {
		if {$myBoard($i) == 0} {
			incr numAvailable;
		}
	}
	
	if {$numAvailable == 0} {
		set loss 1;
		for {set i 0} {$i < 4} {incr i} {
		set pos $i;
				if {$myBoard($pos) == $myBoard([expr $pos + 4]) && $myBoard($pos) != 0} {
					set loss 0;
				} 
				if {$myBoard([expr $pos + 4]) == $myBoard([expr $pos + 8]) && $myBoard([expr $pos + 4]) != 0} {
					set loss 0;
				} 
				if {$myBoard([expr $pos + 8]) == $myBoard([expr $pos + 12]) && $myBoard([expr $pos + 8]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos + 12]) == $myBoard([expr $pos + 8]) && $myBoard([expr $pos + 12]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos + 8]) == $myBoard([expr $pos + 4]) && $myBoard([expr $pos + 8]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos + 4]) == $myBoard($pos) && $myBoard([expr $pos + 4]) != 0} {
					set loss 0;
				}
		}
		
		for {set i 0} {$i < 13} {set i [expr $i + 4]} {
		set pos2 $i;
				if {$myBoard($pos2) == $myBoard([expr $pos2 + 1]) && $myBoard($pos2) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos2 + 1]) == $myBoard([expr $pos2 + 2]) && $myBoard([expr $pos2 + 1]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos2 + 2]) == $myBoard([expr $pos2 + 3]) && $myBoard([expr $pos2 + 2]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos2 + 3]) == $myBoard([expr $pos2 + 2]) && $myBoard([expr $pos2 + 3]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos2 + 2]) == $myBoard([expr $pos2 + 1]) && $myBoard([expr $pos2 + 2]) != 0} {
					set loss 0;
				}
				if {$myBoard([expr $pos2 + 1]) == $myBoard($pos2) && $myBoard([expr $pos2 + 1]) != 0} {
					set loss 0;
				}
		}
	}
	return $loss;
}










