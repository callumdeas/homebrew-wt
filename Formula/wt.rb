class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.2.0.tgz"
    sha256 "b74eb3e25916ba4d6905368efdc57a4b56bab832244a50ae742509fa06577431"
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
