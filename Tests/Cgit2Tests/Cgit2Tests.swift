import Cgit2
import XCTest

final class Cgit2Tests: XCTestCase {
  func testRepoInit() {
    var repo: OpaquePointer?

    let result = git_repository_init(&repo, "test_repo", 0)
    addTeardownBlock {
      if let repo = repo {
        git_repository_free(repo)
      }
    }

    XCTAssertEqual(result, GIT_OK.rawValue)
    XCTAssertNotNil(repo)
  }
}
