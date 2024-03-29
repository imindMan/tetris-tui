# INFO: This is the file containing some page management for the project



# ### IMPORT STUFF ### 
import std/strutils
import illwill

# ####################
type
    PageRender* = object
        page*: string


func newPageRender(page: string): PageRender = 
    return PageRender(page: page)

proc switch(pagerender: var PageRender, page: string) =
    if isEmptyOrWhitespace(pagerender.page):
        raise newException(ValueError, "Excepted a proper page")
    pagerender.page = page
