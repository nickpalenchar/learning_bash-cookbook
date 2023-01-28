#!/bin/bash

# Examples of how multiple lines of text can be used as a here-doc
# replacing the need for feeding a seperate file.


function lookup {
  grep $1 <<'EOF'
nick x.508 # cant indent these
phil x.509
nancy x.802
paul x.511
susan x.737
mike x.001
EOF
# note using <<-'EOF' would allow indents with tabs only, but my vimrc is replacing tabs
# with spaces so it errors for me
}

lookup $1
