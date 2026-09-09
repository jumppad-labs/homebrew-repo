
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.3/spektacular_0.18.3_darwin_x86_64.zip"
    sha256 "60bc5ded38ab89c5f658d87cee1fed8b1337f27d1f1b348fa6142e465262238d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.3/spektacular_0.18.3_darwin_arm64.zip"
    sha256 "383c8b24bd3a6b59bfc45b32aff8775114985c97b3e8013e5c4f46e06d08d195"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.3/spektacular_0.18.3_linux_x86_64.tar.gz"
    sha256 "6abf6267174e614af01e90713c37b7b5efee80a88e2a8a742a387bd146d1b528"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.3/spektacular_0.18.3_linux_arm64.tar.gz"
    sha256 "d9954966798c630f2437d0531089fb37d89780d592b6760ded78be23b67f9bc8"
  end

  def install
    bin.install "spektacular"
  end
end
