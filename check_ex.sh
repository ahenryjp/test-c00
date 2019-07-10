echo "\nPassage a la norminette :\n"
find . -type f -not -name "main.c" -name "*.c" -exec norminette -R CheckForbiddenSourceHeader {} \;
FILES_TO_COMP=$(find . -type f -name "*.c")
echo "\nFichiers compiles :\n\n $FILES_TO_COMP\n"
gcc -Wall -Wextra -Werror -o f $FILES_TO_COMP
echo "Test :\n"
./f
