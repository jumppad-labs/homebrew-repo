
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.15.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.1/spektacular_0.15.1_darwin_x86_64.zip"
    sha256 "e07418208a90fa928f88c82212584ecc0032c1426c7bb57fd859d7b867c3ce1e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.1/spektacular_0.15.1_darwin_arm64.zip"
    sha256 "bc80cdcc088a1d51a9193df5fc1d6a756da46bdf19f11c6ee99b9ba129f4ed5e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.1/spektacular_0.15.1_linux_x86_64.tar.gz"
    sha256 "f95e3a1f1c3dd3d22c4d737dfae23eefd8e8c12e4e43e0593cf06f7dea47b4da"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.1/spektacular_0.15.1_linux_arm64.tar.gz"
    sha256 "f35eb18055bb577af470f6b3ebd3b66e7f4b45683be76fd32b4ca5fff25efdc8"
  end

  def install
    bin.install "spektacular"
  end
end
