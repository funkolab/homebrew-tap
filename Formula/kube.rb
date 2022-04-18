# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kube < Formula
  desc "CLI tools to manage your kubeconfig file !"
  homepage "https://github.com/funkolab/kube"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/funkolab/kube/releases/download/v0.1.1/kube_v0.1.1_darwin_arm64.tar.gz"
      sha256 "539511a0dbc6ebc4364e6e7ed20fac82f7692192a8f2ae94bc3356f34cdb4e1a"

      def install
        bin.install "kube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/funkolab/kube/releases/download/v0.1.1/kube_v0.1.1_darwin_amd64.tar.gz"
      sha256 "70e8e47bcdd4e99263a9b8652d8b167bb54688d6547d56e3c40321cd1fa7e979"

      def install
        bin.install "kube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/funkolab/kube/releases/download/v0.1.1/kube_v0.1.1_linux_arm64.tar.gz"
      sha256 "175c7a1aaf87fd174ee16ebecc76c14e971b9cad67a3f7f3d367ec1e50307704"

      def install
        bin.install "kube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/funkolab/kube/releases/download/v0.1.1/kube_v0.1.1_linux_amd64.tar.gz"
      sha256 "69621a149e49b61cd5f8923215836db77e6cbaebac0a2f52e019e40a277b2f5d"

      def install
        bin.install "kube"
      end
    end
  end

  test do
    system "kube -h"
  end
end
