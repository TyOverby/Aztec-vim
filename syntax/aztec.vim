if exists("b:current_syntax")
  finish
endif

" # ms hs rs lc
syntax match stech_special /^[ \t]*[*"$]/
syntax match stech_numerical /^[ \t]*[0-9]\+\./
syntax region stech_title start=/^[ \t]*[a-zA-Z]/ end=/$/

syntax region stech_comment start=/^[ \t]*#/ end=/$/

syntax region stech_para start=/^[ \t]*"/hs=s+1 end=/$/ contains=stech_inline_math,stech_para_start
syntax region stech_inline_math start=+\$+ skip=+\\\$+ end=+\$+ contained
syntax match stech_para_start /^[ \t]*"/ contained


highlight link stech_comment Comment
highlight link stech_special Special
highlight link stech_numerical Special
highlight link stech_title String

highlight link stech_para Comment
highlight link stech_para_start Special
highlight link stech_inline_math Function

let b:current_syntax = "aztec"
