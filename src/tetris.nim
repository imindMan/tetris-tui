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
import utils/pagerender {.all.}
import utils/render {.all.}
# ###########################
# ##### INITIALIZATION ######
# ###########################
var pr: PageRender = newPageRender("Home")

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
       pr.render(tb, key)
       case key
        of Key.Q: exitProc()
        else: discard

       tb.display()
       sleep(20)


main()
