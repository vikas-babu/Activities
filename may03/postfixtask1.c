#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>
#include "postfixtask1.h"		   

// Push a character onto the stack
void push(Stack* stack, char data) {
    StackNode* newNode = (StackNode*)malloc(sizeof(StackNode));
    newNode->data = data;
    newNode->next = stack->top;
    stack->top = newNode;
}

// Pop a character from the stack
char pop(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack underflow\n");
        exit(EXIT_FAILURE);
    }
    StackNode* temp = stack->top;
    char data = temp->data;
    stack->top = temp->next;
    free(temp);
    return data;
}

// Peek the top character of the stack
char peek(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty\n");
        exit(EXIT_FAILURE);
    }
    return stack->top->data;
}

// Check if the stack is empty
bool isEmpty(Stack* stack) {
    return stack->top == NULL;
}

// Get the precedence of an operator
int precedence(char op) {
    switch (op) {
        case '+':
        case '-':
            return 1;
        case '*':
        case '/':
            return 2;
        default:
            return 0;
    }
}

// Convert infix expression to postfix using the shunting-yard algorithm
char* infixToPostfix(const char* infix) {
    Stack stack;
    stack.top = NULL;
    char* postfix = (char*)malloc(2 * strlen(infix) * sizeof(char)); // Allocate memory for postfix expression
    int postfixIndex = 0;

    for (int i = 0; infix[i] != '\0'; i++) {
        if (isdigit(infix[i])) {
            postfix[postfixIndex++] = infix[i]; // Output operand directly to postfix
        } else if (infix[i] == '(') {
            push(&stack, infix[i]); // Push opening parenthesis onto stack
        } else if (infix[i] == ')') {
            while (!isEmpty(&stack) && peek(&stack) != '(') {
                postfix[postfixIndex++] = pop(&stack); // Pop operators from stack until '('
            }
            pop(&stack); // Discard '('
        } else if (infix[i] == '+' || infix[i] == '-' || infix[i] == '*' || infix[i] == '/') {
            while (!isEmpty(&stack) && precedence(peek(&stack)) >= precedence(infix[i])) {
                postfix[postfixIndex++] = pop(&stack); // Pop operators with higher or equal precedence
            }
            push(&stack, infix[i]); // Push current operator onto stack
        }
    }

    // Pop remaining operators from stack
    while (!isEmpty(&stack)) {
        postfix[postfixIndex++] = pop(&stack);
    }

    postfix[postfixIndex] = '\0'; // Null-terminate the postfix expression
    return postfix;
}

// Evaluate a postfix expression
int evaluatePostfix(const char* postfix) {
    Stack stack;
    stack.top = NULL;

    for (int i = 0; postfix[i] != '\0'; i++) {
        if (isdigit(postfix[i])) {
            push(&stack, postfix[i] - '0'); // Push operand onto stack
        } else {
            int operand2 = pop(&stack); // Pop operands from stack
            int operand1 = pop(&stack);

            switch (postfix[i]) {
                case '+':
                    push(&stack, operand1 + operand2); // Perform addition
                    break;
                case '-':
                    push(&stack, operand1 - operand2); // Perform subtraction
                    break;
                case '*':
                    push(&stack, operand1 * operand2); // Perform multiplication
                    break;
                case '/':
                    push(&stack, operand1 / operand2); // Perform division
                    break;
                default:
                    printf("Invalid operator\n");
                    exit(EXIT_FAILURE);
            }
        }
    }

    return pop(&stack); // Result is left on stack
}
