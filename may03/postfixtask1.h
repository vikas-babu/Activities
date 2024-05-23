#ifndef POSTFIXTASK1_H
#define POSTFIXTASK1_H

// Node structure for stack
typedef struct StackNode {
    char data;
    struct StackNode* next;
} StackNode;

// Stack structure
typedef struct {
    StackNode* top;
} Stack;


// Function prototypes
void push(Stack* stack, char data);
char pop(Stack* stack);
char peek(Stack* stack);
bool isEmpty(Stack* stack);
int precedence(char op);
char* infixToPostfix(const char* infix);
int evaluatePostfix(const char* postfix);

#endif
