import illwill
import pagerender
import ../pages/homepage {.all.} 
import ../pages/hahapage {.all.}


proc render(pagerender: var PageRender, tb: var TerminalBuffer, key: var Key) = 
    case pagerender.page
        of "Home": Homepage_render(pagerender, tb, key)
        of "Haha": Hahapage_render(pagerender, tb, key)
