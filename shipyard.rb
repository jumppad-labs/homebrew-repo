# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_x86_64.tar.gz"
      sha256 "004c0ec1a89d0657edf2029bb59c71cffd789183efe9b3317c4d727841693e77"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_arm64.tar.gz"
        sha256 "4f088f9899c33f903e71f0d299efd822c7fd7d985278348b2b27e70b181215b0"
      else
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_armv6.tar.gz"
        sha256 "4bca0eecedd97ec814e6f29c3aca58f242894a7834057ccdb9276b849ad3d97f"
      end
    end
  end
  
  depends_on "git"
  depends_on "docker"

  def install
  end
end
