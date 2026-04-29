class ClaudeBurn < Formula
  include Language::Python::Virtualenv

  desc "Compact Claude usage tracking after each Claude task"
  homepage "https://github.com/ghosharkaprava8/claude-burn"
  url "https://files.pythonhosted.org/packages/33/79/30ff5825083c32903380aa04fbed08c29499028525401dbc97c54b020632/claude_burn-0.1.1.tar.gz"
  sha256 "e19e2836406cec4bd2e0bd968a7f0b58810c8e9cfe6198f0205def0f01ca2caa"
  license "MIT"

  bottle do
    root_url "https://github.com/ghosharkaprava8/homebrew-claude-burn/releases/download/claude-burn-0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2c01c02f9d88c851644d9782fb2089432431e6f4cd1fe0a33dcc4c7a1b92a36e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "ae4cec26a020aaf87445ab020eb688bb06d258b63314b3d044f462537cd7996d"
  end

  depends_on "python@3.13"

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claude-burn", shell_output("#{bin}/claude-burn --help")
  end
end
