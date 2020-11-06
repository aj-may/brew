class Dotdocker < Formula
  desc "Setup a docker development environment with host based routing"
  homepage "https://github.com/aj-may/dotdocker/"
  url "https://github.com/aj-may/dotdocker/releases/download/v1.5.0/dotdocker-macos"
  sha256 "f6b5bff413ef2365a8e6aff66d730ad8d6a0e94d5e17d49d400e4ac5c599a0aa"

  def install
    File.rename "dotdocker-macos", "dotdocker"
    bin.install "dotdocker"
  end

  test do
    system "#{bin}/dotdocker", "--help"
  end
end
