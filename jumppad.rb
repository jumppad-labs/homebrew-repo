# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.12"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.12/jumppad_0.5.12_darwin_x86_64.zip"
    sha256 "78ea025b25bb7207d2fe60b995bb705a1fc9ddc7a58ec3c304f70b312dccefee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.12/jumppad_0.5.12_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.12/jumppad_0.5.12_linux_x86_64.tar.gz"
    sha256 "0e42d9a834141e11238f248b4280236d4cc556d29c92fa54241fe665cdb3bf0f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.12/jumppad_0.5.12_linux_arm64.tar.gz"
    sha256 "35795b34cd51c6c740f16e4fb5f50d3b51d96bd6390140d39b8e841a273b6915"
  end

  def install
    bin.install "jumppad"
  end
end
