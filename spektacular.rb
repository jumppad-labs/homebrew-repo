
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.24.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.24.0/spektacular_0.24.0_darwin_x86_64.zip"
    sha256 "ed077194cc2a7c7626dd5b97163e5954884fafe3ce6c9b6fdeecd8b3af28bc8f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.24.0/spektacular_0.24.0_darwin_arm64.zip"
    sha256 "cb4578700176f24707e48171bb06240fd423b03b634038d4e9ad8da70f9d4a28"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.24.0/spektacular_0.24.0_linux_x86_64.tar.gz"
    sha256 "e51d2f1707444be949585a7ebda1a665c17acb5b319698ced32d9fbcdadec7e5"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.24.0/spektacular_0.24.0_linux_arm64.tar.gz"
    sha256 "028f0e2982002d3976e8211e867f189e293fb37049930607928bdc798660d87f"
  end

  def install
    bin.install "spektacular"
  end
end
