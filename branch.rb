# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Branch < Formula
    desc "Branch is a small CLI tool to automatically create git branches based on tickets"
    homepage "https://github.com/MaikelVeen/branch"
    url "https://github.com/MaikelVeen/branch/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "df9e9a196405089367b40abd2e80cff645e74c59a08d03917ca58fa7c9f03da1"
    license "MIT"

    # depends_on "cmake" => :build
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/branch/main.go"
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test branch`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  