import Cgit2
import XCTest

final class Cgit2Tests: XCTestCase {
  override class func setUp() {
    super.setUp()
    git_libgit2_init()
  }

  override class func tearDown() {
    super.tearDown()
    git_libgit2_shutdown()
  }

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
