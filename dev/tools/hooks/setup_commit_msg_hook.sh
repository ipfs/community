#!/bin/sh

die() {
    printf >&2 "FATAL: %s\n" "$@"
    exit 1
}

GITDIR=$(git rev-parse --git-dir) || die "run this script inside a git work tree"

HOOK="$GITDIR/hooks/commit-msg"

cat >"$HOOK" <<'EOF' || die "could not cat into '$HOOK'"
#!/bin/sh

grep "^License:" "$1" || {
  echo >>"$1"
  echo "License: MIT" >>"$1"
  echo "Signed-off-by: $(git config user.name) <$(git config user.email)>" >>"$1"
}
EOF

chmod +x "$HOOK" || die "could not chmod +x '$HOOK'"

echo "SUCCESS: added commit-msg hook '$HOOK' to this repo!"
