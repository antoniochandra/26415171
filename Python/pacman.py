import curses
from curses import KEY_RIGHT, KEY_LEFT, KEY_UP, KEY_DOWN
from random import randint


curses.initscr()
win = curses.newwin(20, 60, 0, 0)
win.keypad(1)
curses.noecho()
curses.curs_set(0)
win.border(0)
win.nodelay(1)

key = KEY_RIGHT                                                    # Initializing values
score = 0

xplayer=5
yplayer=5
xenemy=8
yenemy=30

player = [xplayer,yplayer]
food = [randint(1,18),randint(1,58)]
enemy = [xenemy,yenemy]

win.addch(player[0],player[1],'P')
win.addch(food[0],food[1],'*')
win.addch(enemy[0],enemy[1],'A')

while key!=27:
	win.border(0)
	win.addstr(0,2,'Score : '+str(score)+' ')
	win.addstr(0,27,' GAME PACMAN ')
	
	prevKey = key
        event = win.getch()
        key = key if event == -1 else event 
 	
	if key == ord(' '):
       	    key = -1 
            while key != ord(' '):
               key = win.getch()
       	    key = prevKey
            continue

     	if key not in [KEY_LEFT, KEY_RIGHT, KEY_UP, KEY_DOWN, 27]:
		key = prevKey



        player.insert(0, [player[0][0] + (key == KEY_DOWN and 1) + (key == KEY_UP and -1), player[0][1] + (key == KEY_LEFT and -1) + (key == KEY_RIGHT and 1)])

	#if player[0][0] == 0: player[0][0] = player[xplayer+1][yplayer] 
    	#if snake[0][1] == 0: snake[0][1] = 58
    	#if snake[0][0] == 19: snake[0][0] = 1
	#if snake[0][1] == 59: snake[0][1] = 1   
        

	#if player[0] == food:                                            # When snake eats the food
  	 #     food = []
       	  #    score += 1
       	   #   while food == []:
            #	   food = [randint(1, 18), randint(1, 58)]                 # Calculating next food's coordinates
            #	   if food in player: food = []
        #	   win.addch(food[0], food[1], '*')
   	#else:
         #    last = player.pop()                                          # [1] If it does not eat the food, length decreases
       	  #   win.addch(last[0], last[1], ' ')
#	win.addch(player[0][0], player[0][1], '#')

curses.endwin()
print("\nScore : " + str(score))
