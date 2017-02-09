" Vim syntax file
" Language:	C++
" Maintainer:	Nathan Skvirsky <natskvi@gmail.com>
" Last Change:	2006 Aug 23

" Based on Ken Shan's <ccshan@post.harvard.edu> original cpp.vim
" (2002 Jul 15).  The only lines added are line 26 and line 56.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif

" Read the C syntax to start with
if version < 600
so <sfile>:p:h/c.vim
else
runtime! syntax/c.vim
unlet b:current_syntax
endif

" C++ extentions
syn keyword cppSTL		abort abs accumulate acos adjacent_difference adjacent_find any append asctime asin assert assign at atan atan2 atexit atof atoi atol auto_ptr back back_inserter bad bad_alloc bad_cast bad_exception bad_typeid badbit begin binary_compose binary_negate binary_search binder1st binder2nd bitset bsearch c_str calloc capacity ceil cerr cin clear clearerr clock clog close compare const_iterator construct copy copy_backward copy_n cos cosh count count_if cout ctime data deque destroy difftime div domain_error empty end endl eofen for_each fprintf fputc fputs fread free freopen frexp front fscanf fseek fsetpos fstream ftell fwrite gcount generate generate_n get_temporary_buffer getc getchar getenv getline gets gmtime good goodbit hash_map hash_multimap hash_multiset hash_set i2s ifsiterator key_comp ldiv length length_error lexicographical_compare lexicographical_compare_3way list localtime log log10 logic_error longjmp lower_bound make_heap malloc map max max_element tial_sort partial_sort_copy partial_sum partition peek perror pointer_to_binary_function pointer_to_unary_function pop pop_back pop_front pop_heap pow power precision prev_permutation printf ptr_fun push push_back push_front push_heap put putback putc putchar puts qsort raise rand random_sample random_sample_n random_shuffle range_error rbegin rdbuf rdstate read realloc remove remove_copy remove_copy_if remove_if rename rend replace replon setbuf setf setjmp setlocale setvbuf signal sin sinh size size_t sort sort_heap splice sprintf sqrt srand sscanf stable_partition stable_sort std str strcat strchr strcmp strcoll strcpy strcspn strerror strftime string strlen strncat strncmp strncpyary_negate underflow_error unget ungetc uninitialized_copy uninitialized_copy_n uninitialized_fill uninitialized_fill_n unique unique_copy unsetf upper_bound va_arg value_comp vector vfprintf vprintf vsprintf width write const
syn keyword cppStatement	new detor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
if version < 508
let did_cpp_syntax_inits = 1
command -nargs=+ HiLink hi link <args>
else
command -nargs=+ HiLink hi def link <args>
endif
HiLink cppAccess		cppStatement
HiLink cppCast		cppStatement
HiLink cppExceptions		Exception
HiLink cppOperator		Operator
HiLink cppStatement		Statement
HiLink cppSTL			Identifier
HiLink cppType		Type
HiLink cppStorageClass	StorageClass
HiLink cppStructure		Structure
HiLink cppNumber		Number
HiLink cppBoolean		Boolean
delcommand HiLink
endif

let b:current_syntax = "cpp"

" vim: ts=8

