class Drudgetea < Formula
  desc "Bubble Tea TUI for Drudge Report"
  homepage "https://github.com/mikegetz/drudgetea"
  version "1.2.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.7/drudgetea-v1.2.7-darwin-amd64"
      sha256 "a545153c86d959fcd937f4cad6379d53322638f8ea6af2349b95e973ddbd9082"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.7/drudgetea-v1.2.7-darwin-arm64"
      sha256 "2b2b4e9105283dd9289b0d17fe1db6e877c553286595a377f0b537600e6489c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.7/drudgetea-v1.2.7-linux-amd64"
      sha256 "67eb09acdb9f67aeaada49ae88828af8fb9d3a486ce2d388d9215481fb11530b"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.7/drudgetea-v1.2.7-linux-arm64"
      sha256 "1d4459d811dada49d41dd927969e2901dd79f47bd91f29e9b72a3c47a5cac5ad"
    end
  end

  def install
    bin.install Dir["drudgetea-*"].first => "drudgetea"
  end

  test do
    assert_predicate bin/"drudgetea", :executable?
  end
end
