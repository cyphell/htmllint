" Vim compiler file
" Compiler:	htmllint
" Maintainer:	Vain
" URL:		http://
" Last Change:	2004 May 7

if exists("current_compiler")
  finish
endif
if exists("htmllint_path")
	let &l:makeprg="perl\ \"".expand(htmllint_path)."\"\ -w\ lint\ %"
	setlocal errorformat=\%f(%l):\ %n:\ %m,\%f(%l):\ error\ %n:\ %m
	let current_compiler = "htmllint"
endif
