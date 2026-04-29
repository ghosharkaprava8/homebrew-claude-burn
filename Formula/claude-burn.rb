class ClaudeBurn < Formula
  include Language::Python::Virtualenv

  desc "Compact Claude usage tracking after each Claude task"
  homepage "https://github.com/ghosharkaprava8/claude-burn"
  url "https://files.pythonhosted.org/packages/9f/f8/bc790a2cd4474c7f7a8fc24f8f5da127610502b7eb868140a1fc8aff31a2/claude_burn-0.1.0.tar.gz"
  sha256 "f4473bc3f1f5defd1987c3caa20ee62964e38e3c62503fe8a386405386ada0bb"
  license "MIT"

  bottle do
    root_url "https://github.com/ghosharkaprava8/homebrew-claude-burn/releases/download/claude-burn-0.1.0"
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
