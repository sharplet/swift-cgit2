# swift-cgit2 - libgit2 for Apple platforms

swift-cgit2 is a binary distribution of [libgit2][] for Apple platforms.
It's provided for the following platforms and architectures:

| Platform | Version    | Architectures     |
| -------- | ---------- | ----------------- |
| macOS    | >= 10.13.0 | `x86_64`, `arm64` |
| iOS      | >= 11.0.0  | `arm64`           |

swift-cgit2 is not intended to provide native Swift bindings to libgit2. For a
Swift API, take a look at [SwiftGit2][].

[libgit2]: https://libgit2.org
[SwiftGit2]: https://github.com/SwiftGit2/SwiftGit2

## Versioning

swift-cgit2 will follow the same versioning scheme as libgit2, starting at
version 1.1.0. If patches are necessary, a new semantic version will be chosen
that a) doesn't conflict with future libgit2 versions, and b) preserves
semantic versioning for both libraries (if possible).

Examples of swift-cgit2 patches could include bugs that are found with the
prebuilt `.xcframework` binaries & build scripts, or the introduction of new
architectures for existing libgit2 versions.

## License

See [LICENSE](/LICENSE).
