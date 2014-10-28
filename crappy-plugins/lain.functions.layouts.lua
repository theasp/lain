local plugin = {}

plugin = {
   name = 'Lain Layout Functions',
   description = 'Layouts that are part of lain',
   id = 'lain.functions.layouts',
   requires = {"crappy.startup.theme"},
   provides = {"crappy.functions.layouts"},
   options = {},
   functions = {
      ["lain.layout.cascade"] = {
         class = "layout",
         description = "Lain cascade layout",
      },
      ["lain.layout.cascadetile"] = {
         class = "layout",
         description = "Lain cascade tile layout",
      },
      ["lain.layout.centerfair"] = {
         class = "layout",
         description = "Lain center fair layout",
      },
      ["lain.layout.centerwork"] = {
         class = "layout",
         description = "Lain center work layout",
      },
      ["lain.layout.termfair"] = {
         class = "layout",
         description = "Lain term fair layout",
      },
      ["lain.layout.uselessfair"] = {
         class = "layout",
         description = "Lain useless fair layout",
      },
      ["lain.layout.uselesspiral"] = {
         class = "layout",
         description = "Lain useless spiral layout",
      },
      ["lain.layout.uselesstile"] = {
         class = "layout",
         description = "Lain useless tile layout",
      },
   }
}

function plugin.startup(awesomever, settings)
   local layout = require('lain.layout')
   
   plugin.functions['lain.layout.cascade'].func = layout.cascade
   plugin.functions['lain.layout.cascadetile'].func = layout.cascadetile
   plugin.functions['lain.layout.centerfair'].func = layout.centerfair
   plugin.functions['lain.layout.centerwork'].func = layout.centerwork
   plugin.functions['lain.layout.termfair'].func = layout.termfair
   plugin.functions['lain.layout.uselessfair'].func = layout.uselessfair
   plugin.functions['lain.layout.uselesspiral'].func = layout.uselesspiral
   plugin.functions['lain.layout.uselesstile'].func = layout.uselesstile

   -- TODO: Work out the proper directory and which theme.
   local lain_icons = os.getenv("HOME") .. "/.config/awesome/lain/icons/layout/default/"
   local theme = beautiful.get()
   theme.layout_centerfair = lain_icons .. "termfairw.png"
   theme.layout_cascade = lain_icons .. "cascadew.png"
   theme.layout_cascadetile = lain_icons .. "cascadetilew.png"
   theme.layout_centerwork = lain_icons .. "centerworkw.png"
   theme.layout_cascadebrowse = lain_icons .. "cascadebrowsew.png"
end

return plugin
