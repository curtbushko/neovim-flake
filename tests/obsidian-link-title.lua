-- Run with the built configuration loaded.
local Note = require("obsidian.note")
local path = tostring(Obsidian.dir / "20261125-1431.md")
local note = Note.from_lines({
  "---", 'title: "My Note Title"', "aliases: [Short alias]", "---", "# Body",
}, path)
local link = note:format_link()
assert(link:match("^%[My Note Title%]%(.+%)$"), link)
assert(link:find("20261125-1431.md", 1, true), link)
link = note:format_link({ label = "20261125-1431" })
assert(link:match("^%[My Note Title%]"), link)
link = note:format_link({ label = "20261125-1431.md" })
assert(link:match("^%[My Note Title%]"), link)
link = note:format_link({ label = "Short alias" })
assert(link:match("^%[Short alias%]"), link)
link = note:format_link({ label = "Selected text" })
assert(link:match("^%[Selected text%]"), link)
link = note:format_link({ anchor = { anchor = "#section", header = "Section" } })
assert(link:find("My Note Title", 1, true) and link:find("#section)", 1, true), link)
link = note:format_link({ style = "wiki" })
assert(link:match("^%[%["), link)
note = Note.from_lines({ "---", "tags: [note]", "---" }, path)
link = note:format_link()
assert(link:match("^%[20261125%-1431%]"), link)
note.metadata.title = ""
assert(note:format_link() == link)
note.metadata.title = { "Not a string" }
assert(note:format_link() == link)
print("Obsidian link title tests passed")
