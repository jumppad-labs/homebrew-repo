# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.0.27"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.27/shipyard_0.0.27_Darwin_x86_64.tar.gz"
    sha256 "91fab017e53bd78dcf9cae4cdb4d1c0d124143fb1d4bf5295cb518b2383b67aa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.27/shipyard_0.0.27_Linux_x86_64.tar.gz"
      sha256 "444b80251d7a8caba3df85b9aee1f4f8d71948140215d46b4d153f5b511da8ce"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.27/shipyard_0.0.27_Linux_arm64.tar.gz"
        sha256 "db9887de8aca5116b75a8f8c4ddc9e66eeea363992d851c65ccc207df8c10862"
      else
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.27/shipyard_0.0.27_Linux_armv6.tar.gz"
        sha256 "3eee8245f17bd476bd5cf67863ccfc2d8fdcc2a2113f8c66d4efb535cc8b6c74"
      end
    end
  end

  def install
    bin.install "shipyard"
  end
end
