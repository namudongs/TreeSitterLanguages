import Runestone

extension TreeSitterIndentationScopes {
  public static var swift: TreeSitterIndentationScopes {
    return TreeSitterIndentationScopes(
      indent: [
        "protocol_body",
        "class_body",
        "computed_property",
        "computed_getter",
        "computed_setter",
        "function_body",
        "if_statement",
        "lambda_literal",
        "array_literal",
        "dictionary_literal",
        "switch_entry",
        "for_statement",
        "while_statement",
        "repeat_while_statement",
        "enum_class_body",
        "do_statement",
        "catch_block",
        "guard_statement",
        "willset_clause",
        "didset_clause",
      ],
      inheritIndent: [],
      outdent: [
        "else",
        "}",
        "]",
      ])
  }
}
