class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.3.0.tgz"
    sha256 "253adca5f7c1e7010794cb0dde4c722a69a4c2af31a827702439faabdaec4eef"
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
