class Drudgetea < Formula
  desc "Bubble Tea TUI for Drudge Report"
  homepage "https://github.com/mikegetz/drudgetea"
  version "1.2.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.9/drudgetea-v1.2.9-darwin-amd64"
      sha256 "ddf7de54a45c8557fe21a7c59da8e214af0dbc1c9dfc5e5f4a4b2e7492f754d8"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.9/drudgetea-v1.2.9-darwin-arm64"
      sha256 "acdc763ac8e1df45e768239130ffdc250459081cd974ffb7b0604d6a5cfeeeeb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.9/drudgetea-v1.2.9-linux-amd64"
      sha256 "7147d40b0a80440ab6d588403f1b57bec3c1df82fb7fe39ddaabc4ff19bf7666"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.9/drudgetea-v1.2.9-linux-arm64"
      sha256 "60e37042632705a3229258194319ba5faa7fe002dcc235ae357791de43591f7e"
    end
  end

  def install
    bin.install Dir["drudgetea-*"].first => "drudgetea"
  end

  test do
    assert_predicate bin/"drudgetea", :executable?
  end
end
