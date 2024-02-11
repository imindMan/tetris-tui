# INFO: This is the definition of the Homepage
import illwill
import ../utils/pagerender {.all.}

proc Homepage(pagerender: var PageRender, tb: var TerminalBuffer, key: var Key) = 

    tb.clear()
    tb.write(0, 0, "I catch you!")
    case key
        of Key.C: pagerender.switch("Haha")
        else: discard
