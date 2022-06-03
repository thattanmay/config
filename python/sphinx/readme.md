mkdir docs
cd .\docs\

sphinx-quickstart

conf.py

    sys.path.insert(
        0, os.path.abspath("C:\\Users\\tanmay.d.gupta\\Desktop\\sphinx-test\\code")
    )

    extensions = ["sphinx.ext.napoleon"]

    html_theme = "sphinx_rtd_theme"

index.rst

    add 'modules' keyword in '.. toctree'

sphinx-apidoc -o . C:\Users\tanmay.d.gupta\Desktop\sphinx-test\code

.\make.bat html