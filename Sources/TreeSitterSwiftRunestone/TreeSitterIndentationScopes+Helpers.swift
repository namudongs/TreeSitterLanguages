import Runestone

extension TreeSitterIndentationScopes {
  public static var swift: TreeSitterIndentationScopes {
    return TreeSitterIndentationScopes(
      indent: [
        "protocol_body",
        "class_body",
        "enum_class_body",
        "function_declaration",
        "init_declaration",
        "deinit_declaration",
        "computed_property",
        "computed_getter",
        "computed_setter",
        "assignment",
        "control_transfer_statement",
        "for_statement",
        "while_statement",
        "repeat_while_statement",
        "do_statement",
        "if_statement",
        "switch_statement",
        "guard_statement",
        "call_expression",
        "tuple_expression",
        "array_literal",
        "dictionary_literal",
        "lambda_literal",
        "willset_didset_block",
        "willset_clause",
        "didset_clause",
      ],
      inheritIndent: [],
      outdent: [
        "else",
        "catch_keyword",
        "}",
        "]",
      ])
  }
}
