import illwill
import pagerender
import ../pages/homepage {.all.} 


proc render(pagerender: var PageRender, tb: var TerminalBuffer, key: var Key) = 
    case pagerender.page
        of "Home": Homepage_render(pagerender, tb, key)
