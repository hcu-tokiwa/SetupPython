@REM ## Install Python
curl -o %HOMEPATH%/python-3.10.11.exe https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
"%HOMEPATH%/python-3.10.11.exe"
@REM Checked ADD PATH

@REM ## Install Poetry
curl -sSL https://install.python-poetry.org | python
@REM Set Environment variable 'POETRY_PATH'
setx POETRY_PATH %HOMEPATH%/AppData/Roaming/Python/Scripts/poetry.exe
"%POETRY_PATH%" --version
@REM Install Git
winget install --id Git.Git -e --source winget
@REM Install pyenv
git clone https://github.com/pyenv-win/pyenv-win.git "%HOMEPATH%/.pyenv"
setx PYENV %HOMEPATH%/.pyenv/pyenv-win
setx PYENV_ROOT %HOMEPATH%/.pyenv/pyenv-win
setx PYENV_HOME %HOMEPATH%/.pyenv/pyenv-win
path %HOMEPATH%/.pyenv/pyenv-win/bin;%path%
path %HOMEPATH%/.pyenv/pyenv-win/shims;%path%
"%POETRY_PATH%" config virtualenvs.in-project true --local
@REM pause