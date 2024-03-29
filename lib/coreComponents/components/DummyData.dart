import '../../Model/QuizCatModel.dart';
import 'AppIcons.dart';

const _categoryJson = [
  {'id': 1, 'name': 'C Programming', 'quizList': _cQuizJSON, 'icon':AppIcons.cProgm},
  {'id': 2, 'name': 'C++ Programming', 'quizList': _cPPQuizJSON, 'icon':AppIcons.cPP},
  {'id': 3, 'name': 'Java Programming', 'quizList': _javaQuizJSON, 'icon':AppIcons.java},
  {'id': 4, 'name': 'Kotlin', 'quizList': _kotlinQuizJSON, 'icon':AppIcons.kotlin},
  {'id': 5, 'name': 'Flutter', 'quizList': _flutterQuizJSON, 'icon':AppIcons.flutter},
  {'id': 6, 'name': 'Android', 'quizList': _androidQuizJSON, 'icon':AppIcons.android},
  {'id': 7, 'name': 'Data Structure', 'quizList': _dataStrQuizJSON, 'icon':AppIcons.dataStr},
  {'id': 8, 'name': 'Swift', 'quizList': _swiftQuizJSON, 'icon':AppIcons.swift},
];

final catModelList = List<QuizCatModel>.from(_categoryJson.map((e) => QuizCatModel.fromJson(e)));

const _cQuizJSON = [
  {
    "question": "Who is the father of C language?",
    "options": [
      {"value": "Steve Jobs", "status": "unAttempt"},
      {"value": "James Gosling", "status": "unAttempt"},
      {"value": "Dennis Ritchie", "status": "unAttempt"},
      {"value": "Rasmus Lerdorf", "status": "unAttempt"}
    ],
    "answer": "Dennis Ritchie",
    "selectedValue": null
  },
  {
    "question": "Which of the following is not a valid C variable name?",
    "options": [
      {"value": "int number;", "status": "unAttempt"},
      {"value": "float rate;", "status": "unAttempt"},
      {"value": "int variable_count;", "status": "unAttempt"},
      {"value": "int \$main;", "status": "unAttempt"}
    ],
    "answer": "int \$main;",
    "selectedValue": null
  },
  {
    "question": "All keywords in C are in ____________",
    "options": [
      {"value": "LowerCase letters", "status": "unAttempt"},
      {"value": "UpperCase letters", "status": "unAttempt"},
      {"value": "CamelCase letters", "status": "unAttempt"},
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "LowerCase letters",
    "selectedValue": null
  },
  {
    "question": "All keywords in C are in ____________",
    "options": [
      {"value": "LowerCase letters", "status": "unAttempt"},
      {"value": "UpperCase letters", "status": "unAttempt"},
      {"value": "CamelCase letters", "status": "unAttempt"},
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "LowerCase letters",
    "selectedValue": null
  },
  {
    "question": "Which of the following is true for variable names in C?",
    "options": [
      {
        "value":
            "They can contain alphanumeric characters as well as special characters",
        "status": "unAttempt"
      },
      {
        "value":
            "It is not an error to declare a variable to be one of the keywords(like goto, static)",
        "status": "unAttempt"
      },
      {
        "value": "Variable names cannot start with a digit",
        "status": "unAttempt"
      },
      {"value": "Variable can be of any length", "status": "unAttempt"}
    ],
    "answer": "Variable names cannot start with a digit",
    "selectedValue": null
  },
  {
    "question": "Which of the following cannot be a variable name in C?",
    "options": [
      {"value": "volatile", "status": "unAttempt"},
      {"value": "true", "status": "unAttempt"},
      {"value": "friend", "status": "unAttempt"},
      {"value": "export", "status": "unAttempt"}
    ],
    "answer": "volatile",
    "selectedValue": null
  },
  {
    "question": "Which is valid C expression?",
    "options": [
      {"value": "int my_num = 100,000;", "status": "unAttempt"},
      {"value": "int my_num = 100000;", "status": "unAttempt"},
      {"value": "int my num = 1000;", "status": "unAttempt"},
      {"value": "int \$my_num = 10000;", "status": "unAttempt"}
    ],
    "answer": "int my_num = 100000;",
    "selectedValue": null
  },
  {
    "question": "What is short int in C programming?",
    "options": [
      {"value": "The basic data type of C", "status": "unAttempt"},
      {"value": "Qualifier", "status": "unAttempt"},
      {
        "value": "Short is the qualifier and int is the basic data type",
        "status": "unAttempt"
      },
      {"value": "All of the mentioned", "status": "unAttempt"}
    ],
    "answer": "Short is the qualifier and int is the basic data type",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following declaration is not supported by C language?",
    "options": [
      {"value": "String str;", "status": "unAttempt"},
      {"value": "char *str;", "status": "unAttempt"},
      {"value": "float str = 3e2;", "status": "unAttempt"},
      {"value": "All of the mentioned", "status": "unAttempt"}
    ],
    "answer": "String str;",
    "selectedValue": null
  },
  {
    "question":
        "Which keyword is used to prevent any changes in the variable within a C program?",
    "options": [
      {"value": "immutable", "status": "unAttempt"},
      {"value": "mutable", "status": "unAttempt"},
      {"value": "const", "status": "unAttempt"},
      {"value": "volatile", "status": "unAttempt"}
    ],
    "answer": "const",
    "selectedValue": null
  },
  {
    "question": "What is the result of logical or relational expression in C?",
    "options": [
      {"value": "True or False", "status": "unAttempt"},
      {"value": "0 or 1", "status": "unAttempt"},
      {
        "value":
            "0 if an expression is false and any positive number if an expression is true",
        "status": "unAttempt"
      },
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "0 or 1",
    "selectedValue": null
  },
  {
    "question": "Which of the following typecasting is accepted by C language?",
    "options": [
      {"value": "Widening conversions", "status": "unAttempt"},
      {"value": "Narrowing conversions", "status": "unAttempt"},
      {"value": "Widening & Narrowing conversions", "status": "unAttempt"},
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "Widening & Narrowing conversions",
    "selectedValue": null
  },
  {
    "question": "Where in C the order of precedence of operators do not exist?",
    "options": [
      {
        "value": "Within conditional statements, if, else",
        "status": "unAttempt"
      },
      {"value": "Within while, do-while", "status": "unAttempt"},
      {"value": "Within a macro definition", "status": "unAttempt"},
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "None of the mentioned",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is NOT possible with any 2 operators in C?",
    "options": [
      {
        "value": "Different precedence, same associativity",
        "status": "unAttempt"
      },
      {
        "value": "Different precedence, different associativity",
        "status": "unAttempt"
      },
      {
        "value": "Same precedence, different associativity",
        "status": "unAttempt"
      },
      {"value": "All of the mentioned", "status": "unAttempt"}
    ],
    "answer": "Same precedence, different associativity",
    "selectedValue": null
  },
  {
    "question": "What is an example of iteration in C?",
    "options": [
      {"value": "for", "status": "unAttempt"},
      {"value": "while", "status": "unAttempt"},
      {"value": "do-while", "status": "unAttempt"},
      {"value": "all of the mentioned", "status": "unAttempt"}
    ],
    "answer": "all of the mentioned",
    "selectedValue": null
  },
  {
    "question": "Functions can return enumeration constants in C?",
    "options": [
      {"value": "true", "status": "unAttempt"},
      {"value": "false", "status": "unAttempt"},
      {"value": "depends on the compiler", "status": "unAttempt"},
      {"value": "depends on the standard", "status": "unAttempt"}
    ],
    "answer": "true",
    "selectedValue": null
  },
  {
    "question": "Functions in C Language are always _________",
    "options": [
      {"value": "Internal", "status": "unAttempt"},
      {"value": "External", "status": "unAttempt"},
      {"value": "Both Internal and External", "status": "unAttempt"},
      {
        "value": "External and Internal are not valid terms for functions",
        "status": "unAttempt"
      }
    ],
    "answer": "External",
    "selectedValue": null
  },
  {
    "question": "Which of following is not accepted in C?",
    "options": [
      {"value": "static a = 10; //static as", "status": "unAttempt"},
      {
        "value": "static int func (int); //parameter as static",
        "status": "unAttempt"
      },
      {
        "value":
            "static static int a; //a static variable prefixed with static",
        "status": "unAttempt"
      },
      {"value": "all of the mentioned", "status": "unAttempt"}
    ],
    "answer": "static static int a; //a static variable prefixed with static",
    "selectedValue": null
  },
  {
    "question":
        "Property which allows to produce different executable for different platforms in C is called?",
    "options": [
      {"value": "File inclusion", "status": "unAttempt"},
      {"value": "Selective inclusion", "status": "unAttempt"},
      {"value": "Conditional compilation", "status": "unAttempt"},
      {"value": "Recursive macros", "status": "unAttempt"}
    ],
    "answer": "Conditional compilation",
    "selectedValue": null
  },
  {
    "question": "What is #include <stdio.h>?",
    "options": [
      {"value": "Preprocessor directive", "status": "unAttempt"},
      {"value": "Inclusion directive", "status": "unAttempt"},
      {"value": "File inclusion directive", "status": "unAttempt"},
      {"value": "None of the mentioned", "status": "unAttempt"}
    ],
    "answer": "Preprocessor directive",
    "selectedValue": null
  },
  {
    "question": "C preprocessors can have compiler specific features.",
    "options": [
      {"value": "True", "status": "unAttempt"},
      {"value": "False", "status": "unAttempt"},
      {"value": "Depends on the standard", "status": "unAttempt"},
      {"value": "Depends on the platform", "status": "unAttempt"}
    ],
    "answer": "True",
    "selectedValue": null
  },
  {
    "question": "Which of the following are C preprocessors?",
    "options": [
      {"value": "#ifdef", "status": "unAttempt"},
      {"value": "#define", "status": "unAttempt"},
      {"value": "#endif", "status": "unAttempt"},
      {"value": "all of the mentioned", "status": "unAttempt"}
    ],
    "answer": "all of the mentioned",
    "selectedValue": null
  },
  {
    "question": "The C-preprocessors are specified with _________ symbol.",
    "options": [
      {"value": "#", "status": "unAttempt"},
      {"value": "\$", "status": "unAttempt"},
      {"value": "” ”", "status": "unAttempt"},
      {"value": "&", "status": "unAttempt"}
    ],
    "answer": "#",
    "selectedValue": null
  },
  {
    "question":
        "How is search done in #include and #include “somelibrary.h” according to C standard?",
    "options": [
      {
        "value":
            "When former is used, current directory is searched and when latter is used, standard directory is searched",
        "status": "unAttempt"
      },
      {
        "value":
            "When former is used, standard directory is searched and when latter is used, current directory is searched",
        "status": "unAttempt"
      },
      {
        "value":
            "When former is used, search is done in implementation defined manner and when latter is used, current directory is searched",
        "status": "unAttempt"
      },
      {
        "value":
            "For both, search for ‘somelibrary’ is done in implementation-defined places",
        "status": "unAttempt"
      }
    ],
    "answer":
        "When former is used, standard directory is searched and when latter is used, current directory is searched",
    "selectedValue": null
  },
  {
    "question":
        "How many number of pointer (*) does C have against a pointer variable declaration?",
    "options": [
      {"value": "7", "status": "unAttempt"},
      {"value": "127", "status": "unAttempt"},
      {"value": "255", "status": "unAttempt"},
      {"value": "No limits", "status": "unAttempt"}
    ],
    "answer": "No limits",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is not possible statically in C language?",
    "options": [
      {"value": "Jagged Array", "status": "unAttempt"},
      {"value": "Rectangular Array", "status": "unAttempt"},
      {"value": "Cuboidal Array", "status": "unAttempt"},
      {"value": "Multidimensional Array", "status": "unAttempt"}
    ],
    "answer": "Jagged Array",
    "selectedValue": null
  },
];

const _cPPQuizJSON = [
  {
    "question": "Who invented C++?",
    "options": [
      {"value": "Dennis Ritchie", "status": "unAttempt"},
      {"value": "Ken Thompson", "status": "unAttempt"},
      {"value": "Brian Kernighan", "status": "unAttempt"},
      {"value": "Bjarne Stroustrup", "status": "unAttempt"}
    ],
    "answer": "Bjarne Stroustrup",
    "selectedValue": null
  },
  {
    "question": "What is C++?",
    "options": [
      {
        "value": "C++ is an object oriented programming language",
        "status": "unAttempt"
      },
      {
        "value": "C++ is a procedural programming language",
        "status": "unAttempt"
      },
      {
        "value":
            "C++ supports both procedural and object oriented programming language",
        "status": "unAttempt"
      },
      {
        "value": "C++ is a functional programming language",
        "status": "unAttempt"
      }
    ],
    "answer":
        "C++ supports both procedural and object oriented programming language",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is the correct syntax of including a user defined header files in C++?",
    "options": [
      {"value": "#include [userdefined]", "status": "unAttempt"},
      {"value": "#include “userdefined”", "status": "unAttempt"},
      {"value": "#include <userdefined.h>", "status": "unAttempt"},
      {"value": "#include <userdefined>", "status": "unAttempt"}
    ],
    "answer": "#include “userdefined”",
    "selectedValue": null
  },
  {
    "question": "Which of the following is used for comments in C++?",
    "options": [
      {"value": "/* comment */", "status": "unAttempt"},
      {"value": "// comment */", "status": "unAttempt"},
      {"value": "// comment", "status": "unAttempt"},
      {"value": "both // comment or /* comment */", "status": "unAttempt"}
    ],
    "answer": "both // comment or /* comment */",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following user-defined header file extension used in c++?",
    "options": [
      {"value": "hg", "status": "unAttempt"},
      {"value": "cpp", "status": "unAttempt"},
      {"value": "h", "status": "unAttempt"},
      {"value": "hf", "status": "unAttempt"}
    ],
    "answer": "h",
    "selectedValue": null
  },
  {
    "question": "Which of the following is a correct identifier in C++?",
    "options": [
      {"value": "VAR_1234", "status": "unAttempt"},
      {"value": "\$var_name", "status": "unAttempt"},
      {"value": "7VARNAME", "status": "unAttempt"},
      {"value": "7var_name", "status": "unAttempt"}
    ],
    "answer": "VAR_1234",
    "selectedValue": null
  },
  {
    "question": "Which of the following is not a type of Constructor in C++?",
    "options": [
      {"value": "Default constructor", "status": "unAttempt"},
      {"value": "Parameterized constructor", "status": "unAttempt"},
      {"value": "Copy constructor", "status": "unAttempt"},
      {"value": "Friend constructor", "status": "unAttempt"}
    ],
    "answer": "Friend constructor",
    "selectedValue": null
  },
  {
    "question": "Which of the following approach is used by C++?",
    "options": [
      {"value": "Left-right", "status": "unAttempt"},
      {"value": "Right-left", "status": "unAttempt"},
      {"value": "Bottom-up", "status": "unAttempt"},
      {"value": "Top-down", "status": "unAttempt"}
    ],
    "answer": "Bottom-up",
    "selectedValue": null
  },
  {
    "question": "What is virtual inheritance in C++?",
    "options": [
      {
        "value": "C++ technique to enhance multiple inheritance",
        "status": "unAttempt"
      },
      {
        "value":
            "C++ technique to ensure that a private member of the base class can be accessed somehow",
        "status": "unAttempt"
      },
      {
        "value": "C++ technique to avoid multiple inheritances of classes",
        "status": "unAttempt"
      },
      {
        "value":
            "C++ technique to avoid multiple copies of the base class into children/derived class",
        "status": "unAttempt"
      }
    ],
    "answer":
        "C++ technique to avoid multiple copies of the base class into children/derived class",
    "selectedValue": null
  },
  {
    "question": "What is the difference between delete and delete[] in C++?",
    "options": [
      {
        "value":
            "delete is syntactically correct but delete[] is wrong and hence will give an error if used in any case",
        "status": "unAttempt"
      },
      {
        "value":
            "delete is used to delete normal objects whereas delete[] is used to pointer objects",
        "status": "unAttempt"
      },
      {
        "value": "delete is a keyword whereas delete[] is an identifier",
        "status": "unAttempt"
      },
      {
        "value":
            "delete is used to delete single object whereas delete[] is used to multiple(array/pointer of) objects",
        "status": "unAttempt"
      }
    ],
    "answer":
        "delete is used to delete single object whereas delete[] is used to multiple(array/pointer of) objects",
    "selectedValue": null
  },
  {
    "question": "Which of the following is correct about this pointer in C++?",
    "options": [
      {
        "value":
            "this pointer is passed as a hidden argument in all static variables of a class",
        "status": "unAttempt"
      },
      {
        "value":
            "this pointer is passed as a hidden argument in all the functions of a class",
        "status": "unAttempt"
      },
      {
        "value":
            "this pointer is passed as a hidden argument in all non-static functions of a class",
        "status": "unAttempt"
      },
      {
        "value":
            "this pointer is passed as a hidden argument in all static functions of a class",
        "status": "unAttempt"
      }
    ],
    "answer":
        "this pointer is passed as a hidden argument in all non-static functions of a class",
    "selectedValue": null
  },
  {
    "question": "Which of the following type is provided by C++ but not C?",
    "options": [
      {"value": "double", "status": "unAttempt"},
      {"value": "float", "status": "unAttempt"},
      {"value": "int", "status": "unAttempt"},
      {"value": "bool", "status": "unAttempt"}
    ],
    "answer": "bool",
    "selectedValue": null
  },
  {
    "question":
        "By default, all the files in C++ are opened in _________ mode.",
    "options": [
      {"value": "Binary", "status": "unAttempt"},
      {"value": "VTC", "status": "unAttempt"},
      {"value": "Text", "status": "unAttempt"},
      {"value": "ISCII", "status": "unAttempt"}
    ],
    "answer": "Text",
    "selectedValue": null
  },
  {
    "question": "Which of the following correctly declares an array in C++?",
    "options": [
      {"value": "array{10};", "status": "unAttempt"},
      {"value": "array array[10];", "status": "unAttempt"},
      {"value": "int array;", "status": "unAttempt"},
      {"value": "int array[10];", "status": "unAttempt"}
    ],
    "answer": "int array[10];",
    "selectedValue": null
  },
  {
    "question": "What is the size of wchar_t in C++?",
    "options": [
      {"value": "2 or 4", "status": "unAttempt"},
      {"value": "4", "status": "unAttempt"},
      {"value": "2", "status": "unAttempt"},
      {
        "value": "Based on the number of bits in the system",
        "status": "unAttempt"
      }
    ],
    "answer": "2 or 4",
    "selectedValue": null
  },
  {
    "question": "What is the use of the indentation in c++?",
    "options": [
      {
        "value": "r distinguishes between comments and inner data",
        "status": "unAttempt"
      },
      {
        "value": "distinguishes between comments and outer data",
        "status": "unAttempt"
      },
      {
        "value": "distinguishes between comments and code",
        "status": "unAttempt"
      },
      {
        "value": "r distinguishes between comments and outer data",
        "status": "unAttempt"
      }
    ],
    "answer": "distinguishes between comments and code",
    "selectedValue": null
  },
  {
    "question": "Which is more effective while calling the C++ functions?",
    "options": [
      {"value": "call by object", "status": "unAttempt"},
      {"value": "call by pointer", "status": "unAttempt"},
      {"value": "call by value", "status": "unAttempt"},
      {"value": "call by reference", "status": "unAttempt"}
    ],
    "answer": "call by reference",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is used to terminate the function declaration in C++?",
    "options": [
      {"value": ";", "status": "unAttempt"},
      {"value": "]", "status": "unAttempt"},
      {"value": ")", "status": "unAttempt"},
      {"value": ":", "status": "unAttempt"}
    ],
    "answer": ";",
    "selectedValue": null
  },
  {
    "question": "Which keyword is used to define the macros in c++?",
    "options": [
      {"value": "#macro", "status": "unAttempt"},
      {"value": "#define", "status": "unAttempt"},
      {"value": "macro", "status": "unAttempt"},
      {"value": "define", "status": "unAttempt"}
    ],
    "answer": "#define",
    "selectedValue": null
  },
  {
    "question":
        "The C++ code which causes abnormal termination/behaviour of a program should be written under _________ block.",
    "options": [
      {"value": "catch", "status": "unAttempt"},
      {"value": "throw", "status": "unAttempt"},
      {"value": "try", "status": "unAttempt"},
      {"value": "finally", "status": "unAttempt"}
    ],
    "answer": "try",
    "selectedValue": null
  },
  {
    "question": "What is Inheritance in C++?",
    "options": [
      {
        "value": "Deriving new classes from existing classes",
        "status": "unAttempt"
      },
      {"value": "Overloading of classes", "status": "unAttempt"},
      {"value": "Classes with same names", "status": "unAttempt"},
      {"value": "Wrapping of data into a single class", "status": "unAttempt"}
    ],
    "answer": "Deriving new classes from existing classes",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following symbol is used to declare the preprocessor directives in C++?",
    "options": [
      {"value": "\$", "status": "unAttempt"},
      {"value": "^", "status": "unAttempt"},
      {"value": "#", "status": "unAttempt"},
      {"value": "*", "status": "unAttempt"}
    ],
    "answer": "#",
    "selectedValue": null
  },
  {
    "question": "What is meant by a polymorphism in C++?",
    "options": [
      {"value": "class having only single form", "status": "unAttempt"},
      {"value": "class having four forms", "status": "unAttempt"},
      {"value": "class having many forms", "status": "unAttempt"},
      {"value": "class having two forms", "status": "unAttempt"}
    ],
    "answer": "class having many forms",
    "selectedValue": null
  },
  {
    "question": "Pick the incorrect statement about inline functions in C++?",
    "options": [
      {
        "value": "Saves overhead of a return call from a function",
        "status": "unAttempt"
      },
      {
        "value": "They are generally very large and complicated function",
        "status": "unAttempt"
      },
      {
        "value":
            "These functions are inserted/substituted at the point of call",
        "status": "unAttempt"
      },
      {"value": "They reduce function call overheads", "status": "unAttempt"}
    ],
    "answer": "They are generally very large and complicated function",
    "selectedValue": null
  },
  {
    "question": "What is abstract class in C++?",
    "options": [
      {"value": "Any Class in C++ is an abstract class", "status": "unAttempt"},
      {"value": "Class from which any class is derived", "status": "unAttempt"},
      {
        "value":
            "Class specifically used as a base class with atleast one virtual functions",
        "status": "unAttempt"
      },
      {
        "value":
            "Class specifically used as a base class with atleast one pure virtual functions",
        "status": "unAttempt"
      }
    ],
    "answer":
        "Class specifically used as a base class with atleast one pure virtual functions",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following constructors are provided by the C++ compiler if not defined in a class?",
    "options": [
      {"value": "Copy constructor", "status": "unAttempt"},
      {"value": "Default constructor", "status": "unAttempt"},
      {"value": "Assignment constructor", "status": "unAttempt"},
      {"value": "All of the mentioned", "status": "unAttempt"}
    ],
    "answer": "All of the mentioned",
    "selectedValue": null
  },
];

const _javaQuizJSON = [
  {
    "question": "Who invented Java Programming?",
    "options": [
      {"value": "Guido van Rossum", "status": "unAttempt"},
      {"value": "James Gosling", "status": "unAttempt"},
      {"value": "Dennis Ritchie", "status": "unAttempt"},
      {"value": "Bjarne Stroustrup", "status": "unAttempt"}
    ],
    "answer": "James Gosling",
    "selectedValue": null
  },
  {
    "question": "Which statement is true about Java?",
    "options": [
      {
        "value": "Java is a sequence-dependent programming language",
        "status": "unAttempt"
      },
      {
        "value": "Java is a code dependent programming language",
        "status": "unAttempt"
      },
      {
        "value": "Java is a platform-dependent programming language",
        "status": "unAttempt"
      },
      {
        "value": "Java is a platform-independent programming language",
        "status": "unAttempt"
      }
    ],
    "answer": "Java is a platform-independent programming language",
    "selectedValue": null
  },
  {
    "question":
        "Which component is used to compile, debug and execute the java programs?",
    "options": [
      {"value": "JRE", "status": "unAttempt"},
      {"value": "JIT", "status": "unAttempt"},
      {"value": "JDK", "status": "unAttempt"},
      {"value": "JVM", "status": "unAttempt"}
    ],
    "answer": "JDK",
    "selectedValue": null
  },
  {
    "question": "Which one of the following is not a Java feature?",
    "options": [
      {"value": "Object-oriented", "status": "unAttempt"},
      {"value": "Use of pointers", "status": "unAttempt"},
      {"value": "Portable", "status": "unAttempt"},
      {"value": "Dynamic and Extensible", "status": "unAttempt"}
    ],
    "answer": "Use of pointers",
    "selectedValue": null
  },
  {
    "question": "Which of these cannot be used for a variable name in Java?",
    "options": [
      {"value": "identifier & keyword", "status": "unAttempt"},
      {"value": "identifier", "status": "unAttempt"},
      {"value": "keyword", "status": "unAttempt"},
      {"value": "none of the mentioned", "status": "unAttempt"}
    ],
    "answer": "keyword",
    "selectedValue": null
  },
  {
    "question": "What is the extension of java code files?",
    "options": [
      {"value": ".js", "status": "unAttempt"},
      {"value": ".txt", "status": "unAttempt"},
      {"value": ".class", "status": "unAttempt"},
      {"value": ".java", "status": "unAttempt"}
    ],
    "answer": ".java",
    "selectedValue": null
  },
  {
    "question": "Which environment variable is used to set the java path?",
    "options": [
      {"value": "MAVEN_Path", "status": "unAttempt"},
      {"value": "JavaPATH", "status": "unAttempt"},
      {"value": "JAVA", "status": "unAttempt"},
      {"value": "JAVA_HOME", "status": "unAttempt"}
    ],
    "answer": "JAVA_HOME",
    "selectedValue": null
  },
  {
    "question": "Which of the following is not an OOPS concept in Java?",
    "options": [
      {"value": "Polymorphism", "status": "unAttempt"},
      {"value": "Inheritance", "status": "unAttempt"},
      {"value": "Compilation", "status": "unAttempt"},
      {"value": "Encapsulation", "status": "unAttempt"}
    ],
    "answer": "Compilation",
    "selectedValue": null
  },
  {
    "question": "What is not the use of “this” keyword in Java?",
    "options": [
      {
        "value":
            "Referring to the instance variable when a local variable has the same name",
        "status": "unAttempt"
      },
      {
        "value": "Passing itself to the method of the same class",
        "status": "unAttempt"
      },
      {"value": "Passing itself to another method", "status": "unAttempt"},
      {
        "value": "Calling another constructor in constructor chaining",
        "status": "unAttempt"
      }
    ],
    "answer": "Passing itself to the method of the same class",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is a type of polymorphism in Java Programming?",
    "options": [
      {"value": "Multiple polymorphism", "status": "unAttempt"},
      {"value": "Compile time polymorphism", "status": "unAttempt"},
      {"value": "Multilevel polymorphism", "status": "unAttempt"},
      {"value": "Execution time polymorphism", "status": "unAttempt"}
    ],
    "answer": "Compile time polymorphism",
    "selectedValue": null
  },
  {
    "question": "What is Truncation in Java?",
    "options": [
      {
        "value": "Floating-point value assigned to a Floating type",
        "status": "unAttempt"
      },
      {
        "value":
            "this pointer is passed as a hidden argument in all the functions of a class",
        "status": "unAttempt"
      },
      {
        "value": "Integer value assigned to floating type",
        "status": "unAttempt"
      },
      {
        "value": "Integer value assigned to floating type",
        "status": "unAttempt"
      }
    ],
    "answer": "Floating-point value assigned to an integer type",
    "selectedValue": null
  },
  {
    "question": "What is the extension of compiled java classes?",
    "options": [
      {"value": ".txt", "status": "unAttempt"},
      {"value": ".js", "status": "unAttempt"},
      {"value": ".class", "status": "unAttempt"},
      {"value": ".java", "status": "unAttempt"}
    ],
    "answer": ".class",
    "selectedValue": null
  },
  {
    "question": "Which exception is thrown when java is out of memory?",
    "options": [
      {"value": "MemoryError", "status": "unAttempt"},
      {"value": "OutOfMemoryError", "status": "unAttempt"},
      {"value": "MemoryOutOfBoundsException", "status": "unAttempt"},
      {"value": "MemoryFullException", "status": "unAttempt"}
    ],
    "answer": "OutOfMemoryError",
    "selectedValue": null
  },
  {
    "question": "Which of these are selection statements in Java?",
    "options": [
      {"value": "break", "status": "unAttempt"},
      {"value": "continue", "status": "unAttempt"},
      {"value": "for()", "status": "unAttempt"},
      {"value": "if()", "status": "unAttempt"}
    ],
    "answer": "if()",
    "selectedValue": null
  },
  {
    "question": "Which of these keywords is used to define interfaces in Java?",
    "options": [
      {"value": "intf", "status": "unAttempt"},
      {"value": "Intf", "status": "unAttempt"},
      {"value": "interface", "status": "unAttempt"},
      {"value": "Interface", "status": "unAttempt"}
    ],
    "answer": "interface",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is a superclass of every class in Java?",
    "options": [
      {"value": "ArrayList", "status": "unAttempt"},
      {"value": "Abstract class", "status": "unAttempt"},
      {"value": "Object class", "status": "unAttempt"},
      {"value": "String", "status": "unAttempt"}
    ],
    "answer": "Object class",
    "selectedValue": null
  },
  {
    "question": "Host URL is having length of content 127.",
    "options": [
      {"value": "127", "status": "unAttempt"},
      {"value": "126", "status": "unAttempt"},
      {"value": "Runtime Error", "status": "unAttempt"},
      {"value": "Compilation Error", "status": "unAttempt"}
    ],
    "answer": "127",
    "selectedValue": null
  },
  {
    "question": "Which of the below is not a Java Profiler?",
    "options": [
      {"value": "JProfiler", "status": "unAttempt"},
      {"value": "Eclipse Profiler", "status": "unAttempt"},
      {"value": "JVM", "status": "unAttempt"},
      {"value": "JConsole", "status": "unAttempt"}
    ],
    "answer": "JVM",
    "selectedValue": null
  },
  {
    "question":
        "Which of these packages contains the exception Stack Overflow in Java?",
    "options": [
      {"value": "java.io", "status": "unAttempt"},
      {"value": "java.system", "status": "unAttempt"},
      {"value": "java.lang", "status": "unAttempt"},
      {"value": "java.util", "status": "unAttempt"}
    ],
    "answer": "java.lang",
    "selectedValue": null
  },
  {
    "question": "Which of these statements is incorrect about Thread?",
    "options": [
      {
        "value": "start() method is used to begin execution of the thread",
        "status": "unAttempt"
      },
      {
        "value":
            "run() method is used to begin execution of a thread before start() method in special cases",
        "status": "unAttempt"
      },
      {
        "value":
            "A thread can be formed by implementing Runnable interface only",
        "status": "unAttempt"
      },
      {
        "value": "A thread can be formed by a class that extends Thread class",
        "status": "unAttempt"
      }
    ],
    "answer":
        "run() method is used to begin execution of a thread before start() method in special cases",
    "selectedValue": null
  },
  {
    "question":
        "Which of these keywords are used for the block to be examined for exceptions?",
    "options": [
      {"value": "check", "status": "unAttempt"},
      {"value": "throw", "status": "unAttempt"},
      {"value": "catch", "status": "unAttempt"},
      {"value": "try", "status": "unAttempt"}
    ],
    "answer": "try",
    "selectedValue": null
  },
  {
    "question": "Which one of the following is not an access modifier?",
    "options": [
      {"value": "Protected", "status": "unAttempt"},
      {"value": "Void", "status": "unAttempt"},
      {"value": "Public", "status": "unAttempt"},
      {"value": "Private", "status": "unAttempt"}
    ],
    "answer": "Void",
    "selectedValue": null
  },
  {
    "question": "What is the numerical range of a char data type in Java?",
    "options": [
      {"value": "0 to 256", "status": "unAttempt"},
      {"value": "-128 to 127", "status": "unAttempt"},
      {"value": "0 to 65535", "status": "unAttempt"},
      {"value": "0 to 32767", "status": "unAttempt"}
    ],
    "answer": "0 to 65535",
    "selectedValue": null
  },
  {
    "question":
        "Which class provides system independent server side implementation?",
    "options": [
      {"value": "Server", "status": "unAttempt"},
      {"value": "ServerReader", "status": "unAttempt"},
      {"value": "Socket", "status": "unAttempt"},
      {"value": "ServerSocket", "status": "unAttempt"}
    ],
    "answer": "ServerSocket",
    "selectedValue": null
  },
  {
    "question": "Which of the following is true about servlets?",
    "options": [
      {
        "value":
            "Servlets can use the full functionality of the Java class libraries",
        "status": "unAttempt"
      },
      {
        "value":
            "Servlets execute within the address space of web server, platform independent and uses the functionality of java class libraries",
        "status": "unAttempt"
      },
      {
        "value": "Servlets execute within the address space of web server",
        "status": "unAttempt"
      },
      {
        "value":
            "Servlets are platform-independent because they are written in java",
        "status": "unAttempt"
      }
    ],
    "answer":
        "Servlets execute within the address space of web server, platform independent and uses the functionality of java class libraries",
    "selectedValue": null
  },
  {
    "question":
        "Which of these is a process of writing the state of an object to a byte stream?",
    "options": [
      {"value": "Serialization", "status": "unAttempt"},
      {"value": "Externalization", "status": "unAttempt"},
      {"value": "File Filtering", "status": "unAttempt"},
      {"value": "All of the mentioned", "status": "unAttempt"}
    ],
    "answer": "Serialization",
    "selectedValue": null
  },
];

const _flutterQuizJSON = [
  {
    "question":
        "Who developed the Flutter Framework and continues to maintain it today?",
    "options": [
      {"value": "Facebook", "status": "unAttempt"},
      {"value": "Microsoft", "status": "unAttempt"},
      {"value": "Google", "status": "unAttempt"},
      {"value": "Oracle", "status": "unAttempt"}
    ],
    "answer": "Google",
    "selectedValue": null
  },
  {
    "question":
        "Which programming language is used to build Flutter applications?",
    "options": [
      {"value": "Kotlin", "status": "unAttempt"},
      {"value": "Dart", "status": "unAttempt"},
      {"value": "Java", "status": "unAttempt"},
      {"value": "Go", "status": "unAttempt"}
    ],
    "answer": "Dart",
    "selectedValue": null
  },
  {
    "question": "How many types of widgets are there in Flutter?",
    "options": [
      {"value": "2", "status": "unAttempt"},
      {"value": "4", "status": "unAttempt"},
      {"value": "6", "status": "unAttempt"},
      {"value": "8+", "status": "unAttempt"}
    ],
    "answer": "2",
    "selectedValue": null
  },
  {
    "question":
        "When building for iOS, Flutter is restricted to an __ compilation strategy",
    "options": [
      {"value": "AOT (ahead-of-time)", "status": "unAttempt"},
      {"value": "JIT (Just-in-time)", "status": "unAttempt"},
      {"value": "Transcompilation", "status": "unAttempt"},
      {"value": "Recompilation", "status": "unAttempt"}
    ],
    "answer": "AOT (ahead-of-time)",
    "selectedValue": null
  },
  {
    "question": "A sequence of asynchronous Flutter events is known as a:",
    "options": [
      {"value": "Flow", "status": "unAttempt"},
      {"value": "Current", "status": "unAttempt"},
      {"value": "Stream", "status": "unAttempt"},
      {"value": "Series", "status": "unAttempt"}
    ],
    "answer": "Flow",
    "selectedValue": null
  },
  {
    "question":
        "Access to a cloud database through Flutter is available through which service?",
    "options": [
      {"value": "SQLite", "status": "unAttempt"},
      {"value": "Firebase Database", "status": "unAttempt"},
      {"value": "NOSQL", "status": "unAttempt"},
      {"value": "MYSQL", "status": "unAttempt"}
    ],
    "answer": "Firebase Database",
    "selectedValue": null
  },
  {
    "question":
        "What are some key advantages of Flutter over alternate frameworks?",
    "options": [
      {
        "value":
            "Rapid cross-platform application development and debugging tools",
        "status": "unAttempt"
      },
      {
        "value": "Future-proofed technologies and UI resources",
        "status": "unAttempt"
      },
      {
        "value":
            "Strong supporting tools for application development and launch",
        "status": "unAttempt"
      },
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question":
        "What element is used as an identifier for components when programming in Flutter?",
    "options": [
      {"value": "Widgets", "status": "unAttempt"},
      {"value": "Keys", "status": "unAttempt"},
      {"value": "Elements", "status": "unAttempt"},
      {"value": "Serial", "status": "unAttempt"}
    ],
    "answer": "Keys",
    "selectedValue": null
  },
  {
    "question": "What type of test can examine your code as a complete system?",
    "options": [
      {"value": "Unit tests", "status": "unAttempt"},
      {"value": "Widget tests", "status": "unAttempt"},
      {"value": "Integration Tests", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "Integration Tests",
    "selectedValue": null
  },
  {
    "question":
        "What type of Flutter animation allows you to represent real-world behavior?",
    "options": [
      {"value": "Physics-based", "status": "unAttempt"},
      {"value": "Maths-based", "status": "unAttempt"},
      {"value": "Graph-based", "status": "unAttempt"},
      {"value": "Sim-based", "status": "unAttempt"}
    ],
    "answer": "Physics-based",
    "selectedValue": null
  },
  {
    "question":
        "What command would you use to compile your Flutter app in release mode?",
    "options": [
      {"value": "Flutter --release", "status": "unAttempt"},
      {"value": "Flutter build --release", "status": "unAttempt"},
      {"value": "Flutter run --release", "status": "unAttempt"},
      {"value": "Flutter run \$release", "status": "unAttempt"}
    ],
    "answer": "Flutter run --release",
    "selectedValue": null
  },
  {
    "question":
        "Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?",
    "options": [
      {"value": "main()", "status": "unAttempt"},
      {"value": "runApp()", "status": "unAttempt"},
      {"value": "container()", "status": "unAttempt"},
      {"value": "root()", "status": "unAttempt"}
    ],
    "answer": "runApp()",
    "selectedValue": null
  },
  {
    "question":
        "What is the key configuration file used when building a Flutter project?",
    "options": [
      {"value": "pubspec.yaml", "status": "unAttempt"},
      {"value": "pubspec.xml", "status": "unAttempt"},
      {"value": "config.html", "status": "unAttempt"},
      {"value": "root.xml", "status": "unAttempt"}
    ],
    "answer": "pubspec.yaml",
    "selectedValue": null
  },
];

const _kotlinQuizJSON = [
  {
    "question": "What is the keyword used to define a class in Kotlin?",
    "options": [
      {"value": "class", "status": "unAttempt"},
      {"value": "struct", "status": "unAttempt"},
      {"value": "object", "status": "unAttempt"},
      {"value": "type", "status": "unAttempt"}
    ],
    "answer": "class",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is not a valid way to create an object in Kotlin?",
    "options": [
      {"value": "Using the keyword 'new'", "status": "unAttempt"},
      {"value": "Using the keyword 'object'", "status": "unAttempt"},
      {"value": "Using the keyword 'instance'", "status": "unAttempt"},
      {"value": "Using the keyword 'val'", "status": "unAttempt"}
    ],
    "answer": "Using the keyword 'instance'",
    "selectedValue": null
  },
  {
    "question": "What is the purpose of the 'constructor' in Kotlin?",
    "options": [
      {"value": "To define the properties of an object", "status": "unAttempt"},
      {
        "value": "To initialize the properties of an object",
        "status": "unAttempt"
      },
      {"value": "6", "status": "unAttempt"},
      {"value": "8+", "status": "unAttempt"}
    ],
    "answer": "To initialize the properties of an object",
    "selectedValue": null
  },
  {
    "question": "What is the syntax for calling a method in Kotlin?",
    "options": [
      {"value": "object.method()", "status": "unAttempt"},
      {"value": "object.function()", "status": "unAttempt"},
      {"value": "object.procedure()", "status": "unAttempt"},
      {"value": "object.call()", "status": "unAttempt"}
    ],
    "answer": "object.method()",
    "selectedValue": null
  },
  {
    "question":
        "What is the keyword used to define a singleton class in Kotlin?",
    "options": [
      {"value": "singleton", "status": "unAttempt"},
      {"value": "object", "status": "unAttempt"},
      {"value": "static", "status": "unAttempt"},
      {"value": "final", "status": "unAttempt"}
    ],
    "answer": "object",
    "selectedValue": null
  },
  {
    "question":
        "What is the difference between a property and a field in Kotlin?",
    "options": [
      {
        "value": "A property has a getter and setter, while a field does not",
        "status": "unAttempt"
      },
      {
        "value": "A property is a variable, while a field is a constant",
        "status": "unAttempt"
      },
      {
        "value": "A property is a constant, while a field is a variable",
        "status": "unAttempt"
      },
      {
        "value": "A property is a method, while a field is a variable",
        "status": "unAttempt"
      }
    ],
    "answer": "A property has a getter and setter, while a field does not",
    "selectedValue": null
  },
  {
    "question": "What is the purpose of the 'override' keyword in Kotlin?",
    "options": [
      {"value": "To define a property or field", "status": "unAttempt"},
      {"value": "To define a method in a subclass", "status": "unAttempt"},
      {"value": "To define a constructor in a subclass", "status": "unAttempt"},
      {"value": "To define a class in a subclass", "status": "unAttempt"}
    ],
    "answer": "To define a method in a subclass",
    "selectedValue": null
  },
  {
    "question":
        "What is the difference between a 'companion object' and a regular object in Kotlin?",
    "options": [
      {
        "value":
            "A companion object is a singleton object, while a regular object is not",
        "status": "unAttempt"
      },
      {
        "value":
            "A companion object is defined inside a class, while a regular object is not",
        "status": "unAttempt"
      },
      {
        "value":
            "A companion object has access to the private members of a class, while a regular object does not",
        "status": "unAttempt"
      },
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question": "What is the keyword used to define an interface in Kotlin?",
    "options": [
      {"value": "abstract", "status": "unAttempt"},
      {"value": "class", "status": "unAttempt"},
      {"value": "object", "status": "unAttempt"},
      {"value": "interface", "status": "unAttempt"}
    ],
    "answer": "interface",
    "selectedValue": null
  },
  {
    "question": "What is the syntax for creating a subclass in Kotlin?",
    "options": [
      {"value": "class Subclass: Superclass", "status": "unAttempt"},
      {"value": "class Subclass extends Superclass", "status": "unAttempt"},
      {"value": "class Subclass inherits Superclass", "status": "unAttempt"},
      {"value": "class Subclass implements Superclass", "status": "unAttempt"}
    ],
    "answer": "class Subclass: Superclass",
    "selectedValue": null
  },
  {
    "question":
        "How do you define a property in Kotlin that can only be accessed within the same class?",
    "options": [
      {"value": "Using the keyword 'internal'", "status": "unAttempt"},
      {"value": "Using the keyword 'protected'", "status": "unAttempt"},
      {"value": "Using the keyword 'private'", "status": "unAttempt"},
      {"value": "Using the keyword 'local'", "status": "unAttempt"}
    ],
    "answer": "Using the keyword 'private'",
    "selectedValue": null
  },
  {
    "question": "What is the keyword used to define a sealed class in Kotlin?",
    "options": [
      {"value": "final", "status": "unAttempt"},
      {"value": "sealed", "status": "unAttempt"},
      {"value": "closed", "status": "unAttempt"},
      {"value": "restricted", "status": "unAttempt"}
    ],
    "answer": "sealed",
    "selectedValue": null
  },
  {
    "question":
        "What is the keyword used to define an extension function in Kotlin?",
    "options": [
      {"value": "extend", "status": "unAttempt"},
      {"value": "fun", "status": "unAttempt"},
      {"value": "operator", "status": "unAttempt"},
      {"value": "infix", "status": "unAttempt"}
    ],
    "answer": "fun",
    "selectedValue": null
  },
  {
    "question": "What is the keyword used to define a type alias in Kotlin?",
    "options": [
      {"value": "alias", "status": "unAttempt"},
      {"value": "typedef", "status": "unAttempt"},
      {"value": "define", "status": "unAttempt"},
      {"value": "type", "status": "unAttempt"}
    ],
    "answer": "type",
    "selectedValue": null
  },
  {
    "question": "What is the difference between a 'var' and a 'val' in Kotlin?",
    "options": [
      {
        "value":
            "'var' is a mutable variable, while 'val' is an immutable variable",
        "status": "unAttempt"
      },
      {
        "value": "'var' is a constant, while 'val' is a variable",
        "status": "unAttempt"
      },
      {
        "value":
            "'val' is a mutable variable, while 'var' is an immutable variable",
        "status": "unAttempt"
      },
      {
        "value": "'val' is a constant, while 'var' is a variable",
        "status": "unAttempt"
      }
    ],
    "answer":
        "'var' is a mutable variable, while 'val' is an immutable variable",
    "selectedValue": null
  },
  {
    "question":
        "What is the keyword used to define a companion object in Kotlin?",
    "options": [
      {"value": "object", "status": "unAttempt"},
      {"value": "class", "status": "unAttempt"},
      {"value": "companion", "status": "unAttempt"},
      {"value": "static", "status": "unAttempt"}
    ],
    "answer": "companion",
    "selectedValue": null
  },
  {
    "question": "What is the purpose of the 'object' keyword in Kotlin?",
    "options": [
      {"value": "To define a singleton object", "status": "unAttempt"},
      {"value": "To define a static class", "status": "unAttempt"},
      {"value": "To define a non-static class", "status": "unAttempt"},
      {"value": "To define an interface", "status": "unAttempt"}
    ],
    "answer": "To define a singleton object",
    "selectedValue": null
  },
  {
    "question": "What is the keyword used to define a constructor in Kotlin?",
    "options": [
      {"value": "constructor", "status": "unAttempt"},
      {"value": "new", "status": "unAttempt"},
      {"value": "create", "status": "unAttempt"},
      {"value": "init", "status": "unAttempt"}
    ],
    "answer": "init",
    "selectedValue": null
  },
  {
    "question": "What is the keyword used to define a destructor in Kotlin?",
    "options": [
      {"value": "destructor", "status": "unAttempt"},
      {"value": "dispose", "status": "unAttempt"},
      {"value": "finalize", "status": "unAttempt"},
      {"value": "destroy", "status": "unAttempt"}
    ],
    "answer": "finalize",
    "selectedValue": null
  },
  {
    "question": "What is a nested class in Kotlin?",
    "options": [
      {
        "value": "A class that is defined within another class",
        "status": "unAttempt"
      },
      {
        "value": "A class that is defined within a function",
        "status": "unAttempt"
      },
      {
        "value": "A class that is defined within a package",
        "status": "unAttempt"
      },
      {
        "value":
            "A class that is defined outside of any other class or function",
        "status": "unAttempt"
      }
    ],
    "answer": "A class that is defined within another class",
    "selectedValue": null
  },
  {
    "question": "What keyword is used to define a nested class in Kotlin?",
    "options": [
      {"value": "inner", "status": "unAttempt"},
      {"value": "nested", "status": "unAttempt"},
      {"value": "class", "status": "unAttempt"},
      {"value": "outer", "status": "unAttempt"}
    ],
    "answer": "nested",
    "selectedValue": null
  },
  {
    "question": "Can an inner class have its own properties and methods?",
    "options": [
      {
        "value":
            "No, it can only access the outer class's properties and methods",
        "status": "unAttempt"
      },
      {
        "value":
            "No, it can only access the outer class's properties and methods and cannot have its own",
        "status": "unAttempt"
      },
      {
        "value":
            "Yes, but it can only access the outer class's properties and methods, not have its own",
        "status": "unAttempt"
      },
      {
        "value":
            "Yes, it can have its own properties and methods just like any other class",
        "status": "unAttempt"
      }
    ],
    "answer":
        "Yes, it can have its own properties and methods just like any other class",
    "selectedValue": null
  },
  {
    "question":
        "How can an inner class access the outer class's properties and methods?",
    "options": [
      {"value": "By using the 'this' keyword", "status": "unAttempt"},
      {"value": "By using the 'outer' keyword", "status": "unAttempt"},
      {"value": "By using the 'parent' keyword", "status": "unAttempt"},
      {"value": "By using the 'super' keyword", "status": "unAttempt"}
    ],
    "answer": "By using the 'outer' keyword",
    "selectedValue": null
  },
];

const _androidQuizJSON = [
  {
    "question": "Android is -",
    "options": [
      {"value": "an operating system", "status": "unAttempt"},
      {"value": "a web browser", "status": "unAttempt"},
      {"value": "a web server", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "an operating system",
    "selectedValue": null
  },
  {
    "question": "Under which of the following Android is licensed?",
    "options": [
      {"value": "OSS", "status": "unAttempt"},
      {"value": "Sourceforge", "status": "unAttempt"},
      {"value": "Apache/MIT", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Apache/MIT",
    "selectedValue": null
  },
  {
    "question": "For which of the following Android is mainly developed?",
    "options": [
      {"value": "Servers", "status": "unAttempt"},
      {"value": "Desktops", "status": "unAttempt"},
      {"value": "Laptops", "status": "unAttempt"},
      {"value": "Mobile devices", "status": "unAttempt"}
    ],
    "answer": "Mobile devices",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following virtual machine is used by the Android operating system?",
    "options": [
      {"value": "JVM", "status": "unAttempt"},
      {"value": "Dalvik virtual machine", "status": "unAttempt"},
      {"value": "Simple virtual machine", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Dalvik virtual machine",
    "selectedValue": null
  },
  {
    "question": "Android is based on which of the following language?",
    "options": [
      {"value": "Java", "status": "unAttempt"},
      {"value": "C++", "status": "unAttempt"},
      {"value": "C", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Java",
    "selectedValue": null
  },
  {
    "question": "APK stands for -",
    "options": [
      {"value": "Android Phone Kit", "status": "unAttempt"},
      {"value": "Android Page Kit", "status": "unAttempt"},
      {"value": "Android Package Kit", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Android Package Kit",
    "selectedValue": null
  },
  {
    "question": "What does API stand for?",
    "options": [
      {"value": "Application Programming Interface", "status": "unAttempt"},
      {"value": "Android Programming Interface", "status": "unAttempt"},
      {"value": "Android Page Interface", "status": "unAttempt"},
      {"value": "Application Page Interface", "status": "unAttempt"}
    ],
    "answer": "Application Programming Interface",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following converts Java byte code into Dalvik byte code?",
    "options": [
      {"value": "Dalvik converter", "status": "unAttempt"},
      {"value": "Dex compiler", "status": "unAttempt"},
      {"value": "Mobile interpretive compiler (MIC)", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Dex compiler",
    "selectedValue": null
  },
  {
    "question": "How can we stop the services in android?",
    "options": [
      {
        "value": "By using the stopSelf() and stopService() method",
        "status": "unAttempt"
      },
      {"value": "By using the finish() method", "status": "unAttempt"},
      {"value": "By using system.exit() method", "status": "unAttempt"},
      {"value": "By using system.exit() method", "status": "unAttempt"}
    ],
    "answer": "By using the stopSelf() and stopService() method",
    "selectedValue": null
  },
  {
    "question": "What is an activity in android?",
    "options": [
      {"value": "android class", "status": "unAttempt"},
      {"value": "android package", "status": "unAttempt"},
      {
        "value": "A single screen in an application with supporting java code",
        "status": "unAttempt"
      },
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "A single screen in an application with supporting java code",
    "selectedValue": null
  },
  {
    "question": "How can we kill an activity in android?",
    "options": [
      {"value": "Using finish() method", "status": "unAttempt"},
      {"value": "Using finishActivity(int requestCode)", "status": "unAttempt"},
      {"value": "Both (a) and (b)", "status": "unAttempt"},
      {"value": "Neither (a) nor (b)", "status": "unAttempt"}
    ],
    "answer": "Both (a) and (b)",
    "selectedValue": null
  },
  {
    "question": "ADB stands for -",
    "options": [
      {"value": "Android debug bridge", "status": "unAttempt"},
      {"value": "Android delete bridge", "status": "unAttempt"},
      {"value": "Android destroy bridge", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Android debug bridge",
    "selectedValue": null
  },
  {
    "question":
        "On which of the following, developers can test the application, during developing the android applications?",
    "options": [
      {"value": "Third-party emulators", "status": "unAttempt"},
      {"value": "Emulator included in Android SDK", "status": "unAttempt"},
      {"value": "Physical android phone", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question": "Which of the following kernel is used in Android?",
    "options": [
      {"value": "MAC", "status": "unAttempt"},
      {"value": "Windows", "status": "unAttempt"},
      {"value": "Linux", "status": "unAttempt"},
      {"value": "Redhat", "status": "unAttempt"}
    ],
    "answer": "Linux",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is the first callback method that is invoked by the system during an activity life-cycle?",
    "options": [
      {"value": "onClick() method", "status": "unAttempt"},
      {"value": "onCreate() method", "status": "unAttempt"},
      {"value": "onStart() method", "status": "unAttempt"},
      {"value": "onRestart() method", "status": "unAttempt"}
    ],
    "answer": "onCreate() method",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is not an activity lifecycle callback method?",
    "options": [
      {"value": "onClick() method", "status": "unAttempt"},
      {"value": "onCreate() method", "status": "unAttempt"},
      {"value": "onStart() method", "status": "unAttempt"},
      {"value": "onBackPressed() method", "status": "unAttempt"}
    ],
    "answer": "onBackPressed() method",
    "selectedValue": null
  },
  {
    "question":
        "We require an AVD to create an emulator. What does AVD stand for?",
    "options": [
      {"value": "Android Virtual device", "status": "unAttempt"},
      {"value": "Android Virtual display", "status": "unAttempt"},
      {"value": "Active Virtual display", "status": "unAttempt"},
      {"value": "Active Virtual device", "status": "unAttempt"}
    ],
    "answer": "Android Virtual device",
    "selectedValue": null
  },
  {
    "question": "Does android support other languages than java?",
    "options": [
      {"value": "Yes", "status": "unAttempt"},
      {"value": "No", "status": "unAttempt"},
      {"value": "May be", "status": "unAttempt"},
      {"value": "Can't say", "status": "unAttempt"}
    ],
    "answer": "Yes",
    "selectedValue": null
  },
  {
    "question": "What is the use of content provider in Android?",
    "options": [
      {"value": "For storing the data in the database", "status": "unAttempt"},
      {
        "value": "For sharing the data between applications",
        "status": "unAttempt"
      },
      {
        "value":
            "For sending the data from an application to another application",
        "status": "unAttempt"
      },
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "For sending the data from an application to another application",
    "selectedValue": null
  },
  {
    "question": "AAPT stands for -",
    "options": [
      {"value": "Android Activity Packaging Tool", "status": "unAttempt"},
      {"value": "Android Asset Packaging Tool", "status": "unAttempt"},
      {"value": "Android Action Packaging Tool", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Android Asset Packaging Tool",
    "selectedValue": null
  },
  {
    "question": "NDK stands for -",
    "options": [
      {"value": "Native Development Kit", "status": "unAttempt"},
      {"value": "New Development kit", "status": "unAttempt"},
      {"value": "Native Design Kit", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Native Development Kit",
    "selectedValue": null
  },
  {
    "question": "Which of the following is contained in the src folder?",
    "options": [
      {"value": "XML", "status": "unAttempt"},
      {"value": "Java source code", "status": "unAttempt"},
      {"value": "Manifest", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Java source code",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following method is used to handle what happens after clicking a button?",
    "options": [
      {"value": "onClick", "status": "unAttempt"},
      {"value": "onCreate", "status": "unAttempt"},
      {"value": "onSelect", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "onClick",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following android component displays the part of an activity on screen?",
    "options": [
      {"value": "View", "status": "unAttempt"},
      {"value": "Manifest", "status": "unAttempt"},
      {"value": "Intent", "status": "unAttempt"},
      {"value": "Fragment", "status": "unAttempt"}
    ],
    "answer": "Manifest",
    "selectedValue": null
  },
  {
    "question": "Which of the following is the parent class of Activity?",
    "options": [
      {"value": "context", "status": "unAttempt"},
      {"value": "object", "status": "unAttempt"},
      {"value": "contextThemeWrapper", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "contextThemeWrapper",
    "selectedValue": null
  },
  {
    "question": "Which of the following is the parent class of service?",
    "options": [
      {"value": "context", "status": "unAttempt"},
      {"value": "object", "status": "unAttempt"},
      {"value": "contextThemeWrapper", "status": "unAttempt"},
      {"value": "contextWrapper", "status": "unAttempt"}
    ],
    "answer": "contextWrapper",
    "selectedValue": null
  },
];

const _dataStrQuizJSON = [
  {
    "question": "What is a data structure?",
    "options": [
      {"value": "A programming language", "status": "unAttempt"},
      {"value": "A collection of algorithms", "status": "unAttempt"},
      {"value": "A way to store and organize data", "status": "unAttempt"},
      {"value": "A type of computer hardware", "status": "unAttempt"}
    ],
    "answer": "A way to store and organize data",
    "selectedValue": null
  },
  {
    "question": "What are the disadvantages of arrays?",
    "options": [
      {
        "value": "Index value of an array can be negative",
        "status": "unAttempt"
      },
      {"value": "Elements are sequentially accessed", "status": "unAttempt"},
      {
        "value": "Data structure like queue or stack cannot be implemented",
        "status": "unAttempt"
      },
      {
        "value":
            "There are chances of wastage of memory space if elements inserted in an array are lesser than the allocated size",
        "status": "unAttempt"
      }
    ],
    "answer":
        "There are chances of wastage of memory space if elements inserted in an array are lesser than the allocated size",
    "selectedValue": null
  },
  {
    "question": "Which data structure is used for implementing recursion?",
    "options": [
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Queue", "status": "unAttempt"},
      {"value": "List", "status": "unAttempt"},
      {"value": "Array", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
  {
    "question":
        "The data structure required to check whether an expression contains a balanced parenthesis is?",
    "options": [
      {"value": "Queue", "status": "unAttempt"},
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Array", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
  {
    "question": "Which of the following is not the application of stack?",
    "options": [
      {
        "value": "Data Transfer between two asynchronous process",
        "status": "unAttempt"
      },
      {"value": "Compiler Syntax Analyzer", "status": "unAttempt"},
      {
        "value": "Tracking of local variables at run time",
        "status": "unAttempt"
      },
      {"value": "A parentheses balancing program", "status": "unAttempt"}
    ],
    "answer": "Data Transfer between two asynchronous process",
    "selectedValue": null
  },
  {
    "question":
        "Which data structure is needed to convert infix notation to postfix notation?",
    "options": [
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Branch", "status": "unAttempt"},
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Queue", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
  {
    "question": "What is the value of the postfix expression 6 3 2 4 + – *?",
    "options": [
      {"value": "74", "status": "unAttempt"},
      {"value": "-18", "status": "unAttempt"},
      {"value": "22", "status": "unAttempt"},
      {"value": "40", "status": "unAttempt"}
    ],
    "answer": "-18",
    "selectedValue": null
  },
  {
    "question":
        "What data structure would you mostly likely see in non recursive implementation of a recursive algorithm?",
    "options": [
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Linked List", "status": "unAttempt"},
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Queue", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following statement(s) about stack data structure is/are NOT correct?",
    "options": [
      {
        "value": "Top of the Stack always contain the new node",
        "status": "unAttempt"
      },
      {"value": "Stack is the FIFO data structure", "status": "unAttempt"},
      {
        "value":
            "Null link is present in the last node at the bottom of the stack",
        "status": "unAttempt"
      },
      {
        "value": "Linked List are used for implementing Stacks",
        "status": "unAttempt"
      }
    ],
    "answer": "Stack is the FIFO data structure",
    "selectedValue": null
  },
  {
    "question":
        "The data structure required for Breadth First Traversal on a graph is?",
    "options": [
      {"value": "Array", "status": "unAttempt"},
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Queue", "status": "unAttempt"}
    ],
    "answer": "Queue",
    "selectedValue": null
  },
  {
    "question": "The prefix form of A-B/ (C * D ^ E) is?",
    "options": [
      {"value": "-A/B*C^DE", "status": "unAttempt"},
      {"value": "-A/BC*^DE", "status": "unAttempt"},
      {"value": "-ABCD*^DE", "status": "unAttempt"},
      {"value": "-/*^ACBDE", "status": "unAttempt"}
    ],
    "answer": "-A/B*C^DE",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following points is/are not true about Linked List data structure when it is compared with an array?",
    "options": [
      {
        "value":
            "Random access is not allowed in a typical implementation of Linked Lists",
        "status": "unAttempt"
      },
      {
        "value":
            "Access of elements in linked list takes less time than compared to arrays",
        "status": "unAttempt"
      },
      {
        "value":
            "Arrays have better cache locality that can make them better in terms of performance",
        "status": "unAttempt"
      },
      {
        "value": "It is easy to insert and delete elements in Linked List",
        "status": "unAttempt"
      }
    ],
    "answer":
        "Access of elements in linked list takes less time than compared to arrays",
    "selectedValue": null
  },
  {
    "question":
        "Which data structure is based on the Last In First Out (LIFO) principle?",
    "options": [
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Linked List", "status": "unAttempt"},
      {"value": "Stack", "status": "unAttempt"},
      {"value": "Queue", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following application makes use of a circular linked list?",
    "options": [
      {"value": "Recursive function calls", "status": "unAttempt"},
      {"value": "Undo operation in a text editor", "status": "unAttempt"},
      {"value": "Implement Hash Tables", "status": "unAttempt"},
      {"value": "Allocating CPU to resources", "status": "unAttempt"}
    ],
    "answer": "Allocating CPU to resources",
    "selectedValue": null
  },
  {
    "question": "What is a bit array?",
    "options": [
      {
        "value": "Data structure that compactly stores bits",
        "status": "unAttempt"
      },
      {
        "value": "Data structure for representing arrays of records",
        "status": "unAttempt"
      },
      {
        "value":
            "Array in which elements are not present in continuous locations",
        "status": "unAttempt"
      },
      {
        "value": "An array in which most of the elements have the same value",
        "status": "unAttempt"
      }
    ],
    "answer": "Data structure that compactly stores bits",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following tree data structures is not a balanced binary tree?",
    "options": [
      {"value": "Splay tree", "status": "unAttempt"},
      {"value": "B-tree", "status": "unAttempt"},
      {"value": "AVL tree", "status": "unAttempt"},
      {"value": "Red-black tree", "status": "unAttempt"}
    ],
    "answer": "B-tree",
    "selectedValue": null
  },
  {
    "question": "Which of the following is not the type of queue?",
    "options": [
      {"value": "Priority queue", "status": "unAttempt"},
      {"value": "Circular queue", "status": "unAttempt"},
      {"value": "Single ended queue", "status": "unAttempt"},
      {"value": "Ordinary queue", "status": "unAttempt"}
    ],
    "answer": "Single ended queue",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following data structures can be used for parentheses matching?",
    "options": [
      {"value": "n-ary tree", "status": "unAttempt"},
      {"value": "queue", "status": "unAttempt"},
      {"value": "priority queue", "status": "unAttempt"},
      {"value": "stack", "status": "unAttempt"}
    ],
    "answer": "stack",
    "selectedValue": null
  },
  {
    "question": "Which algorithm is used in the top tree data structure?",
    "options": [
      {"value": "Backtracking", "status": "unAttempt"},
      {"value": "Divide and Conquer", "status": "unAttempt"},
      {"value": "Branch", "status": "unAttempt"},
      {"value": "Greedy", "status": "unAttempt"}
    ],
    "answer": "Divide and Conquer",
    "selectedValue": null
  },
  {
    "question": "What is the need for a circular queue?",
    "options": [
      {"value": "easier computations", "status": "unAttempt"},
      {"value": "implement LIFO principle in queues", "status": "unAttempt"},
      {"value": "effective usage of memory", "status": "unAttempt"},
      {"value": "to delete elements based on priority", "status": "unAttempt"}
    ],
    "answer": "effective usage of memory",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following is the most widely used external memory data structure?",
    "options": [
      {"value": "B-tree", "status": "unAttempt"},
      {"value": "Red-black tree", "status": "unAttempt"},
      {"value": "AVL tree", "status": "unAttempt"},
      {"value": "Both AVL tree and Red-black tree", "status": "unAttempt"}
    ],
    "answer": "B-tree",
    "selectedValue": null
  },
  {
    "question": "Which of the following is also known as Rope data structure?",
    "options": [
      {"value": "Linked List", "status": "unAttempt"},
      {"value": "Array", "status": "unAttempt"},
      {"value": "String", "status": "unAttempt"},
      {"value": "Cord", "status": "unAttempt"}
    ],
    "answer": "Cord",
    "selectedValue": null
  },
  {
    "question":
        "Which of the following data structure can provide efficient searching of the elements?",
    "options": [
      {"value": "binary search tree", "status": "unAttempt"},
      {"value": "unordered lists", "status": "unAttempt"},
      {"value": "2-3 tree", "status": "unAttempt"},
      {"value": "treap", "status": "unAttempt"}
    ],
    "answer": "2-3 tree",
    "selectedValue": null
  },
  {
    "question": "What is an AVL tree?",
    "options": [
      {
        "value": "a tree which is unbalanced and is a height balanced tree",
        "status": "unAttempt"
      },
      {
        "value": "a tree which is balanced and is a height balanced tree",
        "status": "unAttempt"
      },
      {"value": "a tree with atmost 3 children", "status": "unAttempt"},
      {"value": "a tree with three children", "status": "unAttempt"}
    ],
    "answer": "a tree which is balanced and is a height balanced tree",
    "selectedValue": null
  },
  {
    "question":
        "What is the time complexity for searching a key or integer in Van Emde Boas data structure?",
    "options": [
      {"value": "O (M!)", "status": "unAttempt"},
      {"value": "O (log M!)", "status": "unAttempt"},
      {"value": "O (log (log M))", "status": "unAttempt"},
      {"value": "O (M2)", "status": "unAttempt"}
    ],
    "answer": "O (log (log M))",
    "selectedValue": null
  },
  {
    "question":
        "The optimal data structure used to solve Tower of Hanoi is _________",
    "options": [
      {"value": "Tree", "status": "unAttempt"},
      {"value": "Heap", "status": "unAttempt"},
      {"value": "Priority queue", "status": "unAttempt"},
      {"value": "Stack", "status": "unAttempt"}
    ],
    "answer": "Stack",
    "selectedValue": null
  },
];

const _swiftQuizJSON = [
  {
    "question": "Who is introduced Swift?",
    "options": [
      {"value": "Chris Lattner", "status": "unAttempt"},
      {"value": "Vikram Adve", "status": "unAttempt"},
      {"value": "Steve Jobs", "status": "unAttempt"},
      {"value": "Tanya Lattner", "status": "unAttempt"}
    ],
    "answer": "Chris Lattner",
    "selectedValue": null
  },
  {
    "question": "When Swift was initially Released?",
    "options": [
      {"value": "June 2, 2012", "status": "unAttempt"},
      {"value": "June 2, 2013", "status": "unAttempt"},
      {"value": "June 2, 2014", "status": "unAttempt"},
      {"value": "June 2, 2015", "status": "unAttempt"}
    ],
    "answer": "June 2, 2014",
    "selectedValue": null
  },
  {
    "question": "Which Of The Following Framework Is Not Used In IOS?",
    "options": [
      {"value": "AppKit Framework", "status": "unAttempt"},
      {"value": "UIKit Framework", "status": "unAttempt"},
      {"value": "Foundation Framework", "status": "unAttempt"},
      {"value": "CoreMotion Framework", "status": "unAttempt"}
    ],
    "answer": "AppKit Framework",
    "selectedValue": null
  },
  {
    "question": "Which command is used to turn the switch on?",
    "options": [
      {"value": "toggle( )", "status": "unAttempt"},
      {"value": "toggleSwitch( )", "status": "unAttempt"},
      {"value": "onSwitch( )", "status": "unAttempt"},
      {"value": "activateSwitch( )", "status": "unAttempt"}
    ],
    "answer": "toggleSwitch( )",
    "selectedValue": null
  },
  {
    "question": "What is swift playground?",
    "options": [
      {
        "value":
        "Is a algorithmic designer tools",
        "status": "unAttempt"
      },
      {
        "value":
        "Advanced tool to create applications",
        "status": "unAttempt"
      },
      {
        "value": "A tool Used to write a pseudo code for any program",
        "status": "unAttempt"
      },
      {"value": "Powerful programming language created by Apple", "status": "unAttempt"}
    ],
    "answer": "Powerful programming language created by Apple",
    "selectedValue": null
  },
  {
    "question": "What is the meaning of question mark '?' in Swift?",
    "options": [
      {"value": "used in loop declaration", "status": "unAttempt"},
      {"value": "used in function declaration", "status": "unAttempt"},
      {"value": "used in property declaration", "status": "unAttempt"},
      {"value": "used in parameter declaration", "status": "unAttempt"}
    ],
    "answer": "used in property declaration",
    "selectedValue": null
  },
  {
    "question": "How can you make a property optional in Swift?",
    "options": [
      {"value": "You have to declare a question mark ? in the code to make a property optional", "status": "unAttempt"},
      {"value": "You have to declare a question mark & in the code to make a property optional", "status": "unAttempt"},
      {"value": "You have to declare a question mark ?? in the code to make a property optional", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "You have to declare a question mark ?? in the code to make a property optional",
    "selectedValue": null
  },
  {
    "question": "The expression that creates a closure in Swift is called ____ in other languages it is also called a Lambda or Anonymous Function.",
    "options": [
      {"value": "Control", "status": "unAttempt"},
      {"value": "Defined", "status": "unAttempt"},
      {
        "value": "Parameter",
        "status": "unAttempt"
      },
      {"value": "Closure Expression", "status": "unAttempt"}
    ],
    "answer": "Closure Expression",
    "selectedValue": null
  },
  {
    "question":
    "What does the question mark (?) indicate A particular property is",
    "options": [
      {"value": "Optional", "status": "unAttempt"},
      {"value": "Missing", "status": "unAttempt"},
      {"value": "Changed", "status": "unAttempt"},
      {"value": "Necessary", "status": "unAttempt"}
    ],
    "answer": "Optional",
    "selectedValue": null
  },
  {
    "question":
    "What are the common execution states in iOS?",
    "options": [
      {"value": "Active", "status": "unAttempt"},
      {"value": "Inactive", "status": "unAttempt"},
      {"value": "Not running", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question": "Swift is which type of language?",
    "options": [
      {"value": "Scripting Language", "status": "unAttempt"},
      {"value": "Object-oriented programming language", "status": "unAttempt"},
      {
        "value":
        "Type-safe language",
        "status": "unAttempt"
      },
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question": "What are the collection types in Swift?",
    "options": [
      {"value": "Array and library", "status": "unAttempt"},
      {"value": "Dictionary and array", "status": "unAttempt"},
      {"value": "Dictionary and library", "status": "unAttempt"},
      {"value": "Library, dictionary and array", "status": "unAttempt"}
    ],
    "answer": "Dictionary and array",
    "selectedValue": null
  },
  {
    "question": "Given : var stringValue:String = 'Somthing'. What is the result of stringValue = nil?",
    "options": [
      {
        "value": "stringValue == nil",
        "status": "unAttempt"
      },
      {"value": "stringValue == 'Somthing'", "status": "unAttempt"},
      {"value": "the compiler won't allow it", "status": "unAttempt"},
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "the compiler won't allow it",
    "selectedValue": null
  },
  {
    "question":
    "Which of the following is not a literals in swift?",
    "options": [
      {
        "value": "Quad Literals",
        "status": "unAttempt"
      },
      {
        "value": "Binary Literals",
        "status": "unAttempt"
      },
      {
        "value": "Decimal Literals",
        "status": "unAttempt"
      },
      {"value": "Hexadecimal Literals", "status": "unAttempt"}
    ],
    "answer": "Quad Literals",
    "selectedValue": null
  },
  {
    "question": "Numbers with decimal values or fractional components are called?",
    "options": [
      {"value": "integer number", "status": "unAttempt"},
      {"value": "floating numbers", "status": "unAttempt"},
      {"value": "decimal number", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "floating numbers",
    "selectedValue": null
  },
  {
    "question": "Which of the following features of Swift programming language?",
    "options": [
      {"value": "Automatic memory management", "status": "unAttempt"},
      {"value": "Swift follows Objective-C like syntax", "status": "unAttempt"},
      {"value": "Swift is very easy to learn and precise to use", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question": "In Swift programming language, single-line comments are started with _______?",
    "options": [
      {"value": "Hash", "status": "unAttempt"},
      {"value": "Asterisk", "status": "unAttempt"},
      {"value": "Single Slashes", "status": "unAttempt"},
      {
        "value": "Double Slashes",
        "status": "unAttempt"
      }
    ],
    "answer": "Double Slashes",
    "selectedValue": null
  },
  {
    "question": "_________ is a hierarchy of objects that obtain the opportunity to respond to the events.",
    "options": [
      {"value": "Dictionary", "status": "unAttempt"},
      {
        "value": "Regular Expression",
        "status": "unAttempt"
      },
      {
        "value":
        "Responder Chain",
        "status": "unAttempt"
      },
      {"value": "None of the above", "status": "unAttempt"}
    ],
    "answer": "Responder Chain",
    "selectedValue": null
  },
  {
    "question":
    "Constants are declared by using _____ keyword and variables by _______ keyword.",
    "options": [
      {"value": "let, var", "status": "unAttempt"},
      {"value": "let, let", "status": "unAttempt"},
      {"value": "var, let", "status": "unAttempt"},
      {"value": "var, var", "status": "unAttempt"}
    ],
    "answer": "let, var",
    "selectedValue": null
  },
  {
    "question": "________ is a process of querying and calling properties",
    "options": [
      {"value": "Swift Chaining", "status": "unAttempt"},
      {"value": "Optional Chaining", "status": "unAttempt"},
      {"value": "Lazy Chaining", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "Optional Chaining",
    "selectedValue": null
  },
  {
    "question": "How many types of classes in Inheritance in Swift?",
    "options": [
      {"value": "1", "status": "unAttempt"},
      {"value": "2", "status": "unAttempt"},
      {"value": "3", "status": "unAttempt"},
      {"value": "4", "status": "unAttempt"}
    ],
    "answer": "2",
    "selectedValue": null
  },
  {
    "question": "What type of integer is denoted by 'Int8'?",
    "options": [
      {"value": "Close", "status": "unAttempt"},
      {"value": "Open", "status": "unAttempt"},
      {"value": "Unsigned", "status": "unAttempt"},
      {"value": "Signed", "status": "unAttempt"}
    ],
    "answer": "Signed",
    "selectedValue": null
  },
  {
    "question": "What's are the new features in Swift 4.0?",
    "options": [
      {"value": "Aster, easier to use Strings that retain Unicode correctness", "status": "unAttempt"},
      {"value": "Added some enhancements to creating a dictionary and Set types", "status": "unAttempt"},
      {"value": "Smart key paths for type-safe, efficient, extensible key-value coding for Swift types", "status": "unAttempt"},
      {"value": "All of the above", "status": "unAttempt"}
    ],
    "answer": "All of the above",
    "selectedValue": null
  },
  {
    "question":
    "The class which inherits the properties from other class is called child class or sub class",
    "options": [
      {
        "value":
        "True",
        "status": "unAttempt"
      },
      {
        "value":
        "False",
        "status": "unAttempt"
      },
      {
        "value":
        "Can be True or False",
        "status": "unAttempt"
      },
      {
        "value":
        "Can not say",
        "status": "unAttempt"
      }
    ],
    "answer":
    "True",
    "selectedValue": null
  },
  {
    "question":
    "Which Of The Following Is Incorrect Value Type Of The Swift?",
    "options": [
      {"value": "Enum", "status": "unAttempt"},
      {"value": "Double", "status": "unAttempt"},
      {"value": "Class", "status": "unAttempt"},
      {"value": "Character", "status": "unAttempt"}
    ],
    "answer": "Class",
    "selectedValue": null
  },
  {
    "question":
    "Which Of The Following Is Incorrect Data Type In SWIFT ?",
    "options": [
      {"value": "Char", "status": "unAttempt"},
      {"value": "UInt", "status": "unAttempt"},
      {"value": "Double", "status": "unAttempt"},
      {"value": "Optional", "status": "unAttempt"}
    ],
    "answer": "Char",
    "selectedValue": null
  },
];