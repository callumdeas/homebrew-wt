class Wt < Formula
    desc "Git worktree manager for bare-repo workflows"
    homepage "https://github.com/CallumDeas/wt"
    url "https://registry.npmjs.org/doubleut/-/doubleut-0.3.1.tgz"
    sha256 "8938491bca2e85729ee558403de4fa0b074e39ef67be178d6a411bf481acf887"
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
