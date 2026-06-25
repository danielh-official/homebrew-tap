class ThingsProgress < Formula
  include Language::Python::Virtualenv

  desc "Textual TUI that shows progress bars for Things 3 projects and headings"
  homepage "https://github.com/danielh-official/things-3-progress-tui"
  url "https://files.pythonhosted.org/packages/cf/4b/fd1f474925e3bf0d87bb89c447c3669192b850d937fec56a61024f615feb/things_3_progress_tui-0.0.3.tar.gz"
  sha256 "604e658cae7c390acfca0df5741a592cdc0e2227237e683720b246e893f8452d"
  license "MIT"

  depends_on "python@3.12"

  # resources filled by `brew update-python-resources`

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"things-progress", "--help"
  end
end
