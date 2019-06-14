class Dotdocker < Formula
  desc "Setup a docker development environment with host based routing"
  homepage "https://github.com/aj-may/dotdocker/"
  url "https://github.com/aj-may/dotdocker/releases/download/v1.3.4/dotdocker-macos"
  sha256 "fc0cadd75e34dde0ec5a1c6c51f9af38819db2dead849c1f066b5ed37ab64151"

  def install
    File.rename "dotdocker-macos", "dotdocker"
    bin.install "dotdocker"
  end

  test do
    system "#{bin}/dotdocker", "--help"
  end
end
