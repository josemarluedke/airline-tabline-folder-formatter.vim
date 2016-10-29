function! airline#extensions#tabline#formatters#folder#format(bufnr, buffers)
  let tabname = ''

  let traits = split(fnamemodify(bufname(a:bufnr), ':f'), '/')

  if len(traits) == 1
    let tabname .= traits[0]
  elseif len(traits) > 1
    let tabname .= join(traits[-2:-1], '/')
  else
    let tabname .= '[No Name]'
  endif

  return tabname
endfunction
