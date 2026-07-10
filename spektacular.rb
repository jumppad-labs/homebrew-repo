
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.13.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.13.0/spektacular_0.13.0_darwin_x86_64.zip"
    sha256 "7faf1420eb405b09f3ce4e3f9e78b519d15d1738d20faaa998b3219ce8f5dd32"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.13.0/spektacular_0.13.0_darwin_arm64.zip"
    sha256 "560d57c66733a12310f1ef8a8865e3edd693284820d35fc19f63530b884b2589"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.13.0/spektacular_0.13.0_linux_x86_64.tar.gz"
    sha256 "ec78056bea2be89c8406883d928dcf8823f754f665a6521f152b4a75a87002c1"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.13.0/spektacular_0.13.0_linux_arm64.tar.gz"
    sha256 "daee4ad37ce5a29182c66c77a6a11e8d089046a1e1c4b6e9a93e3efc68da31b4"
  end

  def install
    bin.install "spektacular"
  end
end
