# 42-rpn_calc
C-Beginner level 5 exam question

My approach to this problem is probably semi-conventional and the most efficient way that I can currently think of. I use linked structs to create a stack of integer values. All conversions (string-to-integer and char-to-operator) occur immediately as the string is forward traversed. Each byte of the input paramenter (argv[1]) is analyzed in order and only once.

List / stack elements are created for each string-to-integer conversion. When an operator ('+', '-', '\*', '/', '%') is interpreted in the string, its respective mathematical function is applied to the pointed integers of the top two elements in the stack. The resulting value is stored in stack's second element, the first element is popped from the stack and freed from memory, and the second element in the list becomes the first element.

Errors:

