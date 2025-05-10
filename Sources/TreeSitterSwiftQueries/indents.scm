[
  ; 블록 내용이 들여쓰기 되어야 하는 노드들
  (protocol_body)               ; protocol Foo { ... }
  (class_body)                  ; class Foo { ... }
  (enum_class_body)             ; enum Foo { ... }
  (function_declaration)        ; func Foo (...) {...}
  (init_declaration)            ; init(...) {...}
  (deinit_declaration)          ; deinit {...}
  (computed_property)           ; { ... }
  (subscript_declaration)       ; subscript Foo(...) { ... }
  (computed_getter)             ; get { ... }
  (computed_setter)             ; set { ... }
  (assignment)                  ; a = b
  (control_transfer_statement)  ; return ...
  (for_statement)
  (while_statement)
  (repeat_while_statement)
  (do_statement)
  (if_statement)
  (switch_statement)
  (guard_statement)
  (call_expression)             ; callFunc(...)
  (tuple_expression)            ; ( foo + bar )
  (array_literal)               ; [ foo, bar ]
  (dictionary_literal)          ; [ foo: bar, x: y ]
  (lambda_literal)
  (willset_didset_block)
  (willset_clause)
  (didset_clause)
] @indent.begin

; 오류 복구를 위한 추가 들여쓰기
(ERROR
  [
    "<" 
    "{" 
    "(" 
    "["
  ]
) @indent.begin

; 특수 구문에서 분기 처리가 필요한 노드들
[
  (else)
  (catch_keyword)
] @indent.branch

; if-elseif 같은 구문에서의 특수 처리
(if_statement
  (if_statement) @indent.dedent)

; case Foo: 문에서의 분기 처리
(switch_entry . _ @indent.branch)

; 함수 선언 닫는 괄호
(function_declaration ")" @indent.branch)

; 제네릭이나 튜플에서의 닫는 기호
(type_parameters ">" @indent.branch @indent.end)
(tuple_expression ")" @indent.branch @indent.end)
(value_arguments ")" @indent.branch @indent.end)
(tuple_type ")" @indent.branch @indent.end)
(modifiers
  (attribute ")" @indent.branch @indent.end))

; 닫는 괄호에서 들여쓰기 종료
[
  "}"
  "]"
] @indent.branch @indent.end

; 자동 들여쓰기 처리할 노드들
[
  (comment)
  (multiline_comment)
  (raw_str_part)
  (multi_line_string_literal)
] @indent.auto

; 들여쓰기 규칙에서 제외할 노드들
(directive) @indent.ignore 