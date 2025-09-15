#!/bin/bash

set -euo pipefail

readonly previous_commit=$1
readonly new_commit=$2

cat <<EOF
This release was created from this commit: https://github.com/llvm/llvm-project/commit/$new_commit

See the diff of \`lld/MachO\` run:

\`\`\`
git diff $previous_commit..$new_commit -- lld/MachO
\`\`\`

NOTE: more things could have changed since it depends on core LLVM libraries as well

sha256s:

\`\`\`
$(shasum -a 256 ld64.lld ld64.tar.gz ld64.tar.xz)
\`\`\`
EOF
