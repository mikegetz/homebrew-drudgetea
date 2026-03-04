class Drudgetea < Formula
  desc "Bubble Tea TUI for Drudge Report"
  homepage "https://github.com/mikegetz/drudgetea"
  version "1.2.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.8/drudgetea-v1.2.8-darwin-amd64"
      sha256 "436cac736d641a09b056092023ae2d30caa2cf4c3ba7389804b14db542dde510"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.8/drudgetea-v1.2.8-darwin-arm64"
      sha256 "9b2d1119dadc6f881c39651d7e63526e0f6f6adb35efed3d36c50497fc6a37b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.8/drudgetea-v1.2.8-linux-amd64"
      sha256 "4a332e960d97e6b7b1e00e8a7df29c28c4a3df288fd4ae59f8f233a057c36455"
    end

    on_arm do
      url "https://github.com/mikegetz/drudgetea/releases/download/v1.2.8/drudgetea-v1.2.8-linux-arm64"
      sha256 "bb8b6251efd7f38b869cc7365cec720ddb9dfaecf9866c0750831a21ee012cf3"
    end
  end

  def install
    bin.install Dir["drudgetea-*"].first => "drudgetea"
  end

  test do
    assert_predicate bin/"drudgetea", :executable?
  end
end
