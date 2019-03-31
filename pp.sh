. "${FUNCTIONS}"
. "${ACTIVATE_SH}"

# Test simple cd
patterntest 'echo "Y" | cd "a a"' '.*a$'
# Test cd to subdirectory
patterntest 'echo "Y" | cd "a a/b b"' '.*a
b$'
# Test cd with env in parent directory
patterntest 'echo "Y" | cd "c c/d d"' '.*c$'
# Test cd into nonexistent directory
echo "Y" | cd 'd d' && exit 1 || :
