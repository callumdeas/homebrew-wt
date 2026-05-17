class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.3.4.tgz"
    sha256 "943ef116244b0f2f698dbd6cf19329b01bcb4c12a6691e4aea58f81dcf8e6a3c"
    license "MIT"

    depends_on "node"

    def install
        system "npm", "install", "--omit=dev", "--ignore-scripts"
        libexec.install Dir["*"]
        chmod 0755, libexec/"dist/cli.js"
        bin.install_symlink libexec/"dist/cli.js" => "wt"
    end

    test do
        assert_match(/Usage: wt/, shell_output("#{bin}/wt --help"))
    end
end
