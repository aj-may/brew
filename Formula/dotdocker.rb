class Dotdocker < Formula
  desc "Setup a docker development environment with host based routing"
  homepage "https://github.com/aj-may/dotdocker/"
  url "https://github.com/aj-may/dotdocker/releases/download/v1.3.0/dotdocker-macos"
  sha256 "a94e21defc2d4b5d9629a6dfdf686b9dc9bb01a774087a09f3103c5986dde490"

  def install
    File.rename "dotdocker-macos", "dotdocker"
    bin.install "dotdocker"
  end

  test do
    system "#{bin}/dotdocker", "--help"
  end
end
