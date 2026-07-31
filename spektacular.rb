
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.16.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.16.0/spektacular_0.16.0_darwin_x86_64.zip"
    sha256 "8d8f1e2c8edf59c95714b91a05513c104273c554320e63962e6118911fe639f0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.16.0/spektacular_0.16.0_darwin_arm64.zip"
    sha256 "105186a0ba0f8d672c1fa58a8a2bb9d0ab678b98679788767dab79f0b7ffea29"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.16.0/spektacular_0.16.0_linux_x86_64.tar.gz"
    sha256 "ef3419a69d163c7b9f163c072290f5f1c948476d4daaf27470ff8e4344b5ffa7"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.16.0/spektacular_0.16.0_linux_arm64.tar.gz"
    sha256 "64a8004ff827d6669995b045dfc1790928a2d39875c3855eeffbfa937cd054e5"
  end

  def install
    bin.install "spektacular"
  end
end
