# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ikube < Formula
  desc "CLI tools to manage your kubeconfig file using infisical !"
  homepage "https://github.com/funkolab/ikube"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/funkolab/ikube/releases/download/v0.1.0/ikube_v0.1.0_darwin_amd64.tar.gz"
      sha256 "985077bfb19ba609b0a74a48ad94182852256c8c2a074b0ac89704cfac550e3a"

      def install
        bin.install "ikube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/funkolab/ikube/releases/download/v0.1.0/ikube_v0.1.0_darwin_arm64.tar.gz"
      sha256 "e25a9ca8454455b90ded8cb2991557caad16a7acc8896a7be77fab82515531c6"

      def install
        bin.install "ikube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/funkolab/ikube/releases/download/v0.1.0/ikube_v0.1.0_linux_amd64.tar.gz"
        sha256 "a96be157df562f515d4a89457943eadcec314ce69683a707745909e303902033"

        def install
          bin.install "ikube"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/funkolab/ikube/releases/download/v0.1.0/ikube_v0.1.0_linux_arm64.tar.gz"
        sha256 "73cf6ab4c4a7c456f1a2e8e05224f412c3be3ac0a0e76bb7d8f3895b44cdec90"

        def install
          bin.install "ikube"
        end
      end
    end
  end

  test do
    system "ikube -h"
  end
end
