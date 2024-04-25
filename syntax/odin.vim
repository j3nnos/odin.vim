if exists("b:current_syntax")
  finish
endif

syntax keyword odinUsing using
syntax keyword odinTransmute transmute
syntax keyword odinCast cast
syntax keyword odinDistinct distinct
syntax keyword odinOpaque opaque
syntax keyword odinWhere where

syntax keyword odinStruct struct
syntax keyword odinEnum enum
syntax keyword odinUnion union
syntax keyword odinBitField bit_field
syntax keyword odinBitSet bit_set

syntax keyword odinIf if
syntax keyword odinWhen when
syntax keyword odinElse else
syntax keyword odinDo do
syntax keyword odinFor for
syntax keyword odinSwitch switch
syntax keyword odinCase case
syntax keyword odinContinue continue
syntax keyword odinBreak break
syntax keyword odinSizeOf size_of
syntax keyword odinOffsetOf offset_of
syntax keyword odinTypeInfoOf type_info_of
syntax keyword odinTypeIdOf typeid_of
syntax keyword odinTypeOf type_of
syntax keyword odinAlignOf align_of

syntax keyword odinOrReturn or_return
syntax keyword odinOrElse or_else

syntax keyword odinInline inline
syntax keyword odinNoInline no_inline

syntax match odinTodo "TODO"
syntax match odinNote "NOTE"
syntax match odinXXX "XXX"
syntax match odinFixMe "FIXME"
syntax match odinNoCheckin "NOCHECKIN"
syntax match odinHack "HACK"

syntax keyword odinDataType string cstring bool b8 b16 b32 b64 rune any rawptr f16 f32 f64 f16le f16be f32le f32be f64le f64be u8 u16 u32 u64 u128 u16le u32le u64le u128le u16be u32be u64be u128be uint uintptr i8 i16 i32 i64 i128 i16le i32le i64le i128le i16be i32be i64be i128be int complex complex32 complex64 complex128 quaternion quaternion64 quaternion128 quaternion256 matrix typeid
syntax keyword odinBool true false
syntax keyword odinNull nil
syntax keyword odinDynamic dynamic
syntax keyword odinMap map
syntax keyword odinProc proc
syntax keyword odinIn in
syntax keyword odinNotIn notin
syntax keyword odinNotIn not_in
syntax keyword odinImport import
syntax keyword odinExport export
syntax keyword odinForeign foreign
syntax keyword odinConst const
syntax match odinNoinit "---"
syntax keyword odinPackage package

syntax keyword odinReturn return
syntax keyword odinDefer defer

syntax region odinRawString start=+`+ end=+`+
syntax region odinChar start=+'+ skip=+\\\\\|\\'+ end=+'+
syntax region odinString start=+"+ skip=+\\\\\|\\'+ end=+"+ contains=odinEscape
syntax match odinEscape display contained /\\\([nrt\\'"]\|x\x\{2}\)/

syntax match odinFunctionDecl "\v<\w*>(\s*::\s*proc)@="
syntax match odinFunctionCall "\v\w+\s*(\()@="

syntax match odinTagNote "@\<\w\+\>" display

syntax match odinConstant "\v<[A-Z0-9,_]+>" display
syntax match odinRange "\.\." display
syntax match odinHalfRange "\.\.\<" display
syntax match odinTernaryQMark "?" display
syntax match odinDeclaration "\:\:\?" display
syntax match odinDeclAssign ":=" display
syntax match odinReturnOp "->" display

syntax match odinInteger "\-\?\<\d\+\>" display
syntax match odinFloat "\-\?\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match odinHex "\<0[xX][0-9A-Fa-f]\+\>" display
syntax match odinDoz "\<0[zZ][0-9a-bA-B]\+\>" display
syntax match odinOct "\<0[oO][0-7]\+\>" display
syntax match odinBin "\<0[bB][01]\+\>" display

syntax match odinAddressOf "&" display
syntax match odinDeref "\^" display

syntax match odinMacro "#\<\w\+\>" display

syntax match odinTemplate "$\<\w\+\>"

syntax match odinCommentNote "@\<\w\+\>" contained display
syntax region odinLineComment start=/\/\// end=/$/  contains=odinCommentNote, odinTodo, odinNote, odinXXX, odinFixMe, odinNoCheckin, odinHack
syntax region odinBlockComment start=/\v\/\*/ end=/\v\*\// contains=odinBlockComment, odinCommentNote, odinTodo, odinNote, odinXXX, odinFixMe, odinNoCheckin, odinHack

highlight def link odinUsing Keyword
highlight def link odinTransmute Keyword
highlight def link odinCast Keyword
highlight def link odinDistinct Keyword
highlight def link odinOpaque Keyword
highlight def link odinReturn Keyword
highlight def link odinSwitch Keyword
highlight def link odinCase Keyword
highlight def link odinProc Keyword
highlight def link odinIn Keyword
highlight def link odinNotIn Keyword
highlight def link odinContinue Keyword
highlight def link odinBreak Keyword
highlight def link odinSizeOf Keyword
highlight def link odinOffsetOf Keyword
highlight def link odinTypeOf Keyword
highlight def link odinTypeInfoOf Keyword
highlight def link odinTypeIdOf Keyword
highlight def link odinAlignOf Keyword
highlight def link odinPackage Keyword
highlight def link odinOrReturn Keyword
highlight def link odinOrElse Keyword
highlight def link odinWhere Keyword

highlight def link odinInline Keyword
highlight def link odinNoInline Keyword

highlight def link odinImport Keyword
highlight def link odinExport Keyword
highlight def link odinForeign Keyword
highlight def link odinNoinit Keyword
highlight def link odinDo Keyword
highlight def link odinDefer Keyword

highlight def link odinDynamic Operator
highlight def link odinMap Operator
highlight def link odinRange Operator
highlight def link odinHalfRange Operator
highlight def link odinAssign Operator
highlight def link odinAddressOf Operator
highlight def link odinDeref Operator

highlight def link odinDeclaration Operator
highlight def link odinDeclAssign Operator
highlight def link odinAssign Operator
highlight def link odinTernaryQMark Operator
highlight def link odinReturnOp Operator

highlight def link odinString String
highlight def link odinRawString String
highlight def link odinChar String

highlight def link odinStruct Structure
highlight def link odinEnum Structure
highlight def link odinUnion Structure
highlight def link odinBitField Structure
highlight def link odinBitSet Structure

" :FunctionHighlighting
highlight def link odinFunctionDecl Function
highlight def link odinFunctionCall Function

highlight def link odinMacro Macro
highlight def link odinIf Conditional
highlight def link odinWhen Conditional
highlight def link odinElse Conditional
highlight def link odinFor Repeat

highlight def link odinLineComment Comment
highlight def link odinBlockComment Comment
highlight def link odinCommentNote Todo

highlight def link odinTodo Todo
highlight def link odinNote Todo
highlight def link odinXXX Todo
highlight def link odinFixMe Todo
highlight def link odinNoCheckin Todo
highlight def link odinHack Todo

highlight def link odinTemplate Constant

highlight def link odinTagNote Identifier
highlight def link odinDataType Type
highlight def link odinBool Boolean
highlight def link odinConstant Constant
highlight def link odinNull Type
highlight def link odinInteger Number
highlight def link odinFloat Float
highlight def link odinHex Number
highlight def link odinOct Number
highlight def link odinBin Number
highlight def link odinDoz Number

let b:current_syntax = "odin"
