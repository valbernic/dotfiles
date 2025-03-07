# TEXLIVE
 
[[ -d "$TEXLIVE" ]] && export PATH="$TEXLIVE:$PATH"
 
# PYTHON
 
if [[ -d "$PYENV_ROOT/bin" ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# NODE

[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"

# SDK

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && \. "$SDKMAN_DIR/bin/sdkman-init.sh"

# JAVA

if command -v java >/dev/null 2>&1; then
  export JAVA_HOME=$(readlink -f $(which java) | sed 's|/bin.*||')
fi

