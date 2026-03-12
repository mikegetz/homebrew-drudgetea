class Drudgetea < Formula
  desc "Bubble Tea TUI for Drudge Report"
  homepage "https://github.com/mikegetz/drudgetea"
  version "1.2.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.11/drudgetea-v1.2.11-darwin-amd64"
      sha256 "02e3eae8327b79e01a5ba3ea657308dc3d723135059769b72a03e988ed9a7dd8"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.11/drudgetea-v1.2.11-darwin-arm64"
      sha256 "8bb3327305b99d85621fb6146438d2b634d322654c500a083ad3a0cdb6e2cb51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.11/drudgetea-v1.2.11-linux-amd64"
      sha256 "155244541f64e04db49be92e292afba234837284d90d4df4a7baa64d95209dc2"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.11/drudgetea-v1.2.11-linux-arm64"
      sha256 "a4ad2863675b772528b4fb12613f9a57e77cc2d9b5f820e2edd0177282b66159"
    end
  end

  def install
    bin.install Dir["drudgetea-*"].first => "drudgetea"
  end

  test do
    assert_predicate bin/"drudgetea", :executable?
  end
end
