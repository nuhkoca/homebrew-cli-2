# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lokalise2 < Formula
  desc "Lokalise CLI v2"
  homepage "https://docs.lokalise.com/cli2"
  version "2.6.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.7/lokalise2_darwin_x86_64.tar.gz"
      sha256 "1b2854390abc4faa61a9e79ba9c051ccd4c50cf325134ea06c25937a4104e524"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.7/lokalise2_darwin_arm64.tar.gz"
      sha256 "fefe7f4eb03512cb7664ec7d0ed6523dc143b143a0b5e4018112cfb2f3ec7013"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.7/lokalise2_linux_x86_64.tar.gz"
      sha256 "60074fef8f3828accda71f1c36d99dc24e30458065530dd96c4080537e70c4a5"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.7/lokalise2_linux_armv6.tar.gz"
      sha256 "ae352fabb631ac62c3058607b0bb9b0215a18c79bd095cb0e184cc826c59c72d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.7/lokalise2_linux_arm64.tar.gz"
      sha256 "f43d6051770f4e1127db0f5469a7550ad05057de8f5d081dc2674a113e7ff1ba"
    end
  end

  def install
    bin.install "lokalise2"
  end
end
