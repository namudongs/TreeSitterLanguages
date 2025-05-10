import Runestone
import TreeSitterSwift
import TreeSitterSwiftQueries

extension TreeSitterLanguage {
  public static var swift: TreeSitterLanguage {
    let highlightsQuery = TreeSitterLanguage.Query(
      contentsOf: TreeSitterSwiftQueries.Query.highlightsFileURL)
    let indentsQuery = TreeSitterLanguage.Query(
      contentsOf: TreeSitterSwiftQueries.Query.indentsFileURL)

    return TreeSitterLanguage(
      tree_sitter_swift(),
      highlightsQuery: highlightsQuery,
      injectionsQuery: nil,
      indentationScopes: .swift,
      indentsQuery: indentsQuery
    )
  }
}
