
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.0.1/spektacular_0.0.1_darwin_x86_64.zip"
    sha256 "2c1126fb43ec73258676341b5320580fe5c1dd2f7292087b0c71ed4f13e928d6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.0.1/spektacular_0.0.1_darwin_arm64.zip"
    sha256 "61cbcba9f2f0045df2622186cb79a6e51294c58cc94d849e100157a16711bcd9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.0.1/spektacular_0.0.1_linux_x86_64.tar.gz"
    sha256 "de64611ca6bb0608ff904c31e9fdb38872304806c066f982bd66d8eda1ed8c22"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.0.1/spektacular_0.0.1_linux_arm64.tar.gz"
    sha256 "6646fbc55fc883c3e879dee82185ec50ada9262ac8f7e4ba310000aa17a20b80"
  end

  def install
    bin.install "spektacular"
  end
end
