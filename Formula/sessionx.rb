class Sessionx < Formula
  desc "Simple tmux session manager with optional git-worktree mode and per-project status bars"
  homepage "https://github.com/jeromecoloma/sessionx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.1.1/sessionx-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b073b57229911a667cd85c21b22dbe82b017ede322136fdf66af8d6be8e89a18"
    end
    on_intel do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.1.1/sessionx-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "db7abca1a78d8550a90256ed08cb2632208bac450af09afde05bbaf3b9846c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.1.1/sessionx-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1387648de90067bf9e8f34bbfcfaa84758b5852b82c7e5982573396ce4c6f18b"
    end
    on_intel do
      url "https://github.com/jeromecoloma/sessionx/releases/download/v0.1.1/sessionx-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42b4ce8acf8cf90d8835d832742dfd2fdc71551312ec90c3deffb30995ef3aae"
    end
  end

  depends_on "tmux"

  def install
    bin.install "sessionx"
    doc.install "README.md", "LICENSE"

    generate_completions_from_executable(bin/"sessionx", "completions")
  end

  test do
    assert_match "sessionx #{version}", shell_output("#{bin}/sessionx --version")
  end
end
