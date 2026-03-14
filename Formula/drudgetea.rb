class Drudgetea < Formula
  desc "Bubble Tea TUI for Drudge Report"
  homepage "https://github.com/mikegetz/drudgetea"
  version "1.2.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.12/drudgetea-v1.2.12-darwin-amd64"
      sha256 "89e73ab0631de66d59269d7dac92bc5c37f8f96785aa739d0a6eba16be21bd6f"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.12/drudgetea-v1.2.12-darwin-arm64"
      sha256 "f90f510f4c345877db3541fa64690db6b5885095dfccbba0a78a2b255fea3e9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.12/drudgetea-v1.2.12-linux-amd64"
      sha256 "4d36154eed1a96d5f6f9334f705a7400d5e7d8b92e1bed6e137cd61276a0f1fd"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.12/drudgetea-v1.2.12-linux-arm64"
      sha256 "71c6f89e3c3da86eb673460fa6d2597982716f5d7eaf3d4a019179ebfc8eec17"
    end
  end

  def install
    bin.install Dir["drudgetea-*"].first => "drudgetea"
  end

  test do
    assert_predicate bin/"drudgetea", :executable?
  end
end
