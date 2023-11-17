# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.57"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.57/jumppad_0.5.57_darwin_x86_64.zip"
    sha256 "39503c2c256a6ac1c6c4cdcc37aa2368b9be4714297dbbc2d1187493d2f53db7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.57/jumppad_0.5.57_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.57/jumppad_0.5.57_linux_x86_64.tar.gz"
    sha256 "76178901a3c3263c9891a65929b7b64e8044d2932ce2fa92ce6148b4ed22dfe1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.57/jumppad_0.5.57_linux_arm64.tar.gz"
    sha256 "52e5d5d51a9870bf9c542be2ae0f872f8cf12c6ef4e85a1293d6a4857d46f698"
  end

  def install
    bin.install "jumppad"
  end
end
