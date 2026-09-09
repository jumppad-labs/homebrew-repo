
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.4/spektacular_0.18.4_darwin_x86_64.zip"
    sha256 "71daccdd29612364c34f3c110a15d6e2a47adb51642c433a2b62ee43da42ea6c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.4/spektacular_0.18.4_darwin_arm64.zip"
    sha256 "db127c18d8b98835c207860287d30a157211e3b8d09d24d26c6073fa3b082cc8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.4/spektacular_0.18.4_linux_x86_64.tar.gz"
    sha256 "c1196783459c6ede4d91c530d15cb575aca67b78075ea3c28cf81c5b6691f857"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.4/spektacular_0.18.4_linux_arm64.tar.gz"
    sha256 "5c8b695a0239dff95baa7954a67b3f194d2d256daf3b76be5b2f552468242d3e"
  end

  def install
    bin.install "spektacular"
  end
end
