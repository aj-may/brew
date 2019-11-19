class Dotdocker < Formula
  desc "Setup a docker development environment with host based routing"
  homepage "https://github.com/aj-may/dotdocker/"
  url "https://github.com/aj-may/dotdocker/releases/download/v1.4.1/dotdocker-macos"
  sha256 "1ce059c4e91091c53c5de3144587a1d0802b909fa8fea89cac1c5bd7f3eaec2e"

  def install
    File.rename "dotdocker-macos", "dotdocker"
    bin.install "dotdocker"
  end

  test do
    system "#{bin}/dotdocker", "--help"
  end
end
