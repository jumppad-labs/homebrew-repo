
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.12.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.12.0/spektacular_0.12.0_darwin_x86_64.zip"
    sha256 "9761090b64c9939979d4f9e83a4a4197da9a351ea93faec3d4ccba7b8c346aab"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.12.0/spektacular_0.12.0_darwin_arm64.zip"
    sha256 "99dbc98f45f70aeef4c4c686623c018fb4093db3428d93acc76f1ea15b454c17"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.12.0/spektacular_0.12.0_linux_x86_64.tar.gz"
    sha256 "c598bc9b8e255423bbe8e03f5f592fcbaefec80c209594bee52a6d4671509c75"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.12.0/spektacular_0.12.0_linux_arm64.tar.gz"
    sha256 "8a4c9b435cad6373d8db087ca44a0829d1e4921327fbdb92c722390640d22c3f"
  end

  def install
    bin.install "spektacular"
  end
end
