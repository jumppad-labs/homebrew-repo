# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.0.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.26/shipyard_0.0.26_Darwin_x86_64.tar.gz"
    sha256 "c0d6f73e67cebcbf996f7078213a9bd8a8dc6b0e4f63fc6a02486944b96bccb0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.26/shipyard_0.0.26_Linux_x86_64.tar.gz"
      sha256 "63019b7d08a21355eef9941bbb141f82ef58b5370b2bfbcd8c73b54ed0715f6f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.26/shipyard_0.0.26_Linux_arm64.tar.gz"
        sha256 "c50fe076f4749d95ee87650939221d57475587b7bc788241c137861e75d1b686"
      else
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.26/shipyard_0.0.26_Linux_armv6.tar.gz"
        sha256 "7239644e46976ebe231b353102b3589906d97ef7695f1ce187242abba7101c91"
      end
    end
  end

  def install
    bin.install "shipyard"
  end
end
