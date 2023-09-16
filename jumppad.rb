# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.49"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.49/jumppad_0.5.49_darwin_x86_64.zip"
    sha256 "0632c387a3bcffd6841a11efbef124d1ebcd921d0d2f1646fd1400fbe9f181f0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.49/jumppad_0.5.49_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.49/jumppad_0.5.49_linux_x86_64.tar.gz"
    sha256 "c5ecceeccbe21123cea374ef54b6c798ebd08309dab39ad417c58a89e5d1ca91"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.49/jumppad_0.5.49_linux_arm64.tar.gz"
    sha256 "3e550cbd7e92d709031cd4c7bb107f286c3e301e780bdc272481d0d63daabc66"
  end

  def install
    bin.install "jumppad"
  end
end
