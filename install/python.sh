# http://docs.python-guide.org/en/latest/dev/virtualenvs/
pip install --user pipenv
echo 'export PATH="/Users/seboraid/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"'  >> ~/.zshrc
source ~/.zshrc