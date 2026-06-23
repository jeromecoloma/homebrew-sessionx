class Sessionx < Formula
  desc "Tmux session manager with git-worktree mode and per-project status bars"
  homepage "https://github.com/jeromecoloma/sessionx"
  license "MIT"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.2.1/sessionx-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "5d3414ef35b43089bd2e45960d3fbd8a534116da12a8b6ee327801aa5802cf69"
    end
    on_intel do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.2.1/sessionx-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "ef5084728df93ee89b1b2c829a34e680b79c5bb3120bfe21faf6110cd1000aae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.2.1/sessionx-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63bc8be51df8e17b3722cc3f5f1a848186adcecc8df35277b627786c8dbb1445"
    end
    on_intel do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.2.1/sessionx-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddfc321e7e8c9125ae5f6fa38bdc0cda686ddf8b02dd157afa5aeacb1cf4b883"
    end
  end

  def install
    bin.install "sessionx"
    doc.install "README.md", "LICENSE"

    generate_completions_from_executable(bin/"sessionx", "completions")
  end

  test do
    assert_match "sessionx #{version}", shell_output("#{bin}/sessionx --version")
  end
end
