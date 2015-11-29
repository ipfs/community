#!/bin/sh

if [ ! -d ".git" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "Cannot find .git folder!"
  echo "Move this file to the root folder of a git repository and try again"
else

cat >.git/hooks/commit-msg <<'EOF'
#!/bin/sh

grep "^License:" "$1" || {
  echo >>"$1"
  echo "License: MIT" >>"$1"
  echo "Signed-off-by: $(git config user.name) <$(git config user.email)>" >>"$1"
}
EOF
chmod +x .git/hooks/commit-msg
echo "Added commit-msg hook to this repo!"

fi
