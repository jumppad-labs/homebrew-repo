
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.9.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.9.0/spektacular_0.9.0_darwin_x86_64.zip"
    sha256 "49aed427df8d77682140d345fb32496d64f30c660ce3bb3e6a90d8a0eb851595"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.9.0/spektacular_0.9.0_darwin_arm64.zip"
    sha256 "a1805a8ce5a9d21af4c7326312573982a60eecae89b7369a1745f6317a28dcfa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.9.0/spektacular_0.9.0_linux_x86_64.tar.gz"
    sha256 "eaafc9c708ba8d8bfeb08784f6a7ac68e2601c3cd599c01b4072ecf7e03792f0"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.9.0/spektacular_0.9.0_linux_arm64.tar.gz"
    sha256 "8518730bd515c51537b7d958ad9031a40cbeb1391935a2b783ac0a26b057f3a8"
  end

  def install
    bin.install "spektacular"
  end
end
