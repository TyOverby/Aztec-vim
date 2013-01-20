if exists("b:current_syntax")
  finish
endif

" # ms hs rs lc
syntax match stech_special /^[ \t]*[*"#]/
syntax match stech_numerical /^[ \t]*[0-9]\+\./
syntax region stech_title start=/^[ \t]*[a-zA-Z]/ end=/$/

syntax region stech_para start=/^[ \t]*"/ end=/$/ contains=stech_inline_math
syntax region stech_inline_math start=+\$+ skip=+\\\$+ end=+\$+ contained

highlight link stech_inline_math Function
highlight link stech_special Special
highlight link stech_numerical Special
highlight link stech_title String
highlight link stech_para Comment

let b:current_syntax = "stech"
