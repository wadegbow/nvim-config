local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node

local fmta = require('luasnip.extras.fmt').fmta

return {
  s(
    'fetch',
    fmta(
      [[
    {%
        set <> =  fetch('<>')
            .<>
    %}
    ]],
      { i(1), c(2, { t 'article', t 'media', t 'channel', t 'entry' }), i(3) }
    )
  ),
}
