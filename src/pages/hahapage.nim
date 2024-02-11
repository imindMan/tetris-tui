import illwill
import ../utils/pagerender {.all.}


proc hahapage(pagerender: var PageRender, tb: var TerminalBuffer, key: var Key) = 
    tb.clear()
    tb.write(0, 0, "Well, I can't avoid anything")

    case key 
        of Key.C: pagerender.switch("Home")
        else: discard
