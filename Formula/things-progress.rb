class ThingsProgress < Formula
  include Language::Python::Virtualenv

  desc "Textual TUI that shows progress bars for Things 3 projects and headings"
  homepage "https://github.com/danielh-official/things-3-progress-tui"
  url "https://files.pythonhosted.org/packages/cf/4b/fd1f474925e3bf0d87bb89c447c3669192b850d937fec56a61024f615feb/things_3_progress_tui-0.0.3.tar.gz"
  sha256 "604e658cae7c390acfca0df5741a592cdc0e2227237e683720b246e893f8452d"
  license "MIT"

  depends_on "python@3.12"

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/b4/de/88b3be5c31b22333b3ca2f6ff1de4e863d8fe45aaea7485f591970ec1d3e/linkify_it_py-2.1.0-py3-none-any.whl"
    sha256 "0d252c1594ecba2ecedc444053db5d3a9b7ec1b0dd929c8f1d74dce89f86c05e"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/a5/69/6da5581c6a7fede7dc261bf4e67d6adca4196f176b43288b55b3db395b6e/mdit_py_plugins-0.6.1-py3-none-any.whl"
    sha256 "214c82fb2ac524472ab6a5bcab1de80f73b50443e187f401bfd77efbc7c6481d"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/81/e6/cd9575ac904136b3cbf7aa7ee819ef86eedb7274e46f230e94ea4342e729/platformdirs-4.10.0-py3-none-any.whl"
    sha256 "fb516cdb12eb0d857d0cd85a7c57cea4d060bee4578d6cf5a14dfdf8cbf8784a"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/a8/f5/c1e18bc0707300a0e90204343abbf7d7acd6fb7ebe03a6d4893b99a234b8/textual-8.2.7-py3-none-any.whl"
    sha256 "4caaa13a90bc4cf9c6c862c067ccd34fe84e9c161710a2a907a8026313b6bd73"
  end

  resource "things-py" do
    url "https://files.pythonhosted.org/packages/8a/f7/7ca01abf3927ed680688e2ce4c608f0c252dc224134ca2b1f04940db0efd/things_py-1.0.1.tar.gz"
    sha256 "6d760727e57c0cfb85f18a63b36459287573f7d7c0442874a76d4ef38b92089d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/61/73/d21edf5b204d1467e06500080a50f79d49ef2b997c79123a536d4a17d97c/uc_micro_py-2.0.0-py3-none-any.whl"
    sha256 "3603a3859af53e5a39bc7677713c78ea6589ff188d70f4fee165db88e22b242c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # App is an interactive TUI with no --help flag; just verify the
    # entry point and its dependencies import inside the virtualenv.
    system libexec/"bin/python", "-c", "import app, textual, things"
  end
end
