# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lokalise2 < Formula
  desc "Lokalise CLI v2"
  homepage "https://docs.lokalise.com/cli2"
  version "2.6.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.8/lokalise2_darwin_x86_64.tar.gz"
      sha256 "2c067a5d562e4cdf28e5377f297bb580ab7ece2b9e4132a76e0e1703ec9dc780"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.8/lokalise2_darwin_arm64.tar.gz"
      sha256 "ac7919ef799355cb82578d656cc7f4cd340b23d4fa0c140e9520bd9b9beb9abc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.8/lokalise2_linux_x86_64.tar.gz"
      sha256 "e49a52c0ccd8f2da168ce66603b47b9fce27d5dbb459bc6e53aee0d9f0ec8dbe"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.8/lokalise2_linux_armv6.tar.gz"
      sha256 "e2b7f1bd4477ccffdba21c0373529f789141f6487299a58c9ab6332caafb990c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lokalise/lokalise-cli-2-go/releases/download/v2.6.8/lokalise2_linux_arm64.tar.gz"
      sha256 "2a1cb723534575faaf00a5825714f941f524d650d59572fb74041dc2d0fab757"
    end
  end

  def install
    bin.install "lokalise2"
  end
end
