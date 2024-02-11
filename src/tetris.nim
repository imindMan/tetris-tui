# INFO: Author: imindMan. Written on: 10/02/2024
# This is a tetris clone designed to be fully featured 
# everything for tetris (also a little bit of tetr.io flavor)
# such as different gameplay, configuration, custom mode, and even 
# music embedded! (maybe animation in the future).
# Written in nim and based mainly on illwill, also this is my first 
# attempt to use nim. Hope you enjoy the project!


# ###########################
# ###### DECLARATION ########
# ###########################
import illwill, os
include utils/pagerender
import pages/homepage {.all.}
import pages/hahapage {.all.}
# ###########################
# ##### INITIALIZATION ######
# ###########################

var pageRender: PageRender = newPageRender("Home")


proc render(pagerender: var PageRender, tb: var TerminalBuffer, key: var Key) = 
    case pagerender.page
        of "Home": Homepage(pagerender, tb, key) 
        of "Haha": hahapage(pagerender, tb, key)


proc exitProc() {.noconv.} = 
# INFO: This function is for exiting the program. Not really that special
    illwillDeinit()
    showCursor()
    quit(0)


proc main() = 
# INFO: Main program start point.
     illwillInit(fullscreen=true)
     setControlCHook(exitProc)
     hideCursor()
     while true:
       var tb = newTerminalBuffer(terminalWidth(), terminalHeight())
       var key = getKey()
       pageRender.render(tb, key)
       tb.display()
       sleep(20)


main()
