
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.33.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.33.0/spektacular_0.33.0_darwin_x86_64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.33.0/spektacular_0.33.0_darwin_arm64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.33.0/spektacular_0.33.0_linux_x86_64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.33.0/spektacular_0.33.0_linux_arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "spektacular"
  end
end
