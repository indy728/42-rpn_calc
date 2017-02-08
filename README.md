# 42-rpn_calc
C-Beginner level 5 exam question

My approach to this problem is probably semi-conventional and the most efficient way that I can currently think of. I use linked structs to create a stack of integer values. All conversions (string-to-integer and char-to-operator) occur immediately as the string is forward traversed. Each byte of the input paramenter (argv[1]) is analyzed in order and only once.

List / stack elements are created for each string-to-integer conversion. When an operator ('+', '-', '\*', '/', '%') is interpreted in the string, its respective mathematical function is applied to the pointed integers of the top two elements in the stack. The resulting value is stored in stack's second element, the first element is popped from the stack and freed from memory, and the second element in the stack becomes the first element.

The rpn\_calc program will return a value (followed by a newline character) to STDOUT via printf if there is exactly one parameter as input and only if that parameter is interpretable in Reverse Polish Notation.

The rpn\_calc program will return "Error\n" to STDOUT if:
• The number of input parameters is not exactly one.
• There are not at least two elements in the stack when an operator character is interpreted (improper RPN order/ notation).
• The applied operator would attempt to divide or modulus by zero (floating point exception).
• The elements / operators are separated by anything other than exactly one space (' ').
• There are any extraneous characters as input (non-math/numeric/space).
• The last character of input is not a mathematical operator.
• The number of converted integers is more than one plus the number of operators (interpreted if there is more than one element in the stack after traversing the string).


