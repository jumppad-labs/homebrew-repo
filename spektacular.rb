
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.19.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.2/spektacular_0.19.2_darwin_x86_64.zip"
    sha256 "b4b77c1eecf2bf8a46599d46fff6f445cc4e39f5869399aa815ef174dab9533d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.2/spektacular_0.19.2_darwin_arm64.zip"
    sha256 "446de4d8645992f080181183df54d1b3f5f352df66eb57ab2557c6600edab6b1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.2/spektacular_0.19.2_linux_x86_64.tar.gz"
    sha256 "594236c98296d0c1c497b4d8c4dbc9c9dd3b4e1fa487696d4eb40d8b00d9c04a"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.2/spektacular_0.19.2_linux_arm64.tar.gz"
    sha256 "34bab77bd401f8261884b09eafadb7127a8f9f4a4ae11f9d9b61debcf972f277"
  end

  def install
    bin.install "spektacular"
  end
end
