
# 20 Examples on Exception Handling in C++

Here are **20 examples** on **Exception Handling in C++**. These examples cover the basics of exception handling, custom exceptions, and advanced features like multiple catches, re-throwing exceptions, and nested try-catch blocks.

### 1. **Basic Exception Handling**
```cpp
#include <iostream>
using namespace std;

int main() {
    try {
        throw 10;  // Throw an integer exception
    } catch (int e) {
        cout << "Caught an exception: " << e << endl;
    }
    return 0;
}
```

### 2. **Catching Different Types of Exceptions**
```cpp
#include <iostream>
using namespace std;

int main() {
    try {
        throw 10;  // Integer exception
    } catch (int e) {
        cout << "Caught integer exception: " << e << endl;
    }

    try {
        throw "Error";  // String exception
    } catch (const char* e) {
        cout << "Caught string exception: " << e << endl;
    }
    
    return 0;
}
```

### 3. **Multiple Catch Blocks**
```cpp
#include <iostream>
using namespace std;

int main() {
    try {
        throw 10;  // Integer exception
    } catch (int e) {
        cout << "Caught integer exception: " << e << endl;
    } catch (const char* e) {
        cout << "Caught string exception: " << e << endl;
    }
    return 0;
}
```

### 4. **Catching Base and Derived Classes**
```cpp
#include <iostream>
using namespace std;

class BaseException {};
class DerivedException : public BaseException {};

int main() {
    try {
        throw DerivedException();  // Derived exception
    } catch (BaseException& e) {
        cout << "Caught BaseException!" << endl;
    }
    return 0;
}
```

### 5. **Re-throwing Exceptions**
```cpp
#include <iostream>
using namespace std;

void function() {
    try {
        throw 20;
    } catch (int e) {
        cout << "Caught exception: " << e << endl;
        throw;  // Re-throw the exception
    }
}

int main() {
    try {
        function();
    } catch (int e) {
        cout << "Caught re-thrown exception: " << e << endl;
    }
    return 0;
}
```

### 6. **Using Exception Class**
```cpp
#include <iostream>
#include <exception>
using namespace std;

class MyException : public exception {
public:
    const char* what() const noexcept override {
        return "My custom exception occurred!";
    }
};

int main() {
    try {
        throw MyException();
    } catch (const MyException& e) {
        cout << e.what() << endl;
    }
    return 0;
}
```

### 7. **Exception Handling in Functions**
```cpp
#include <iostream>
using namespace std;

void function() {
    throw "Exception in function!";
}

int main() {
    try {
        function();
    } catch (const char* msg) {
        cout << "Caught exception: " << msg << endl;
    }
    return 0;
}
```

### 8. **Nested Try-Catch Blocks**
```cpp
#include <iostream>
using namespace std;

int main() {
    try {
        try {
            throw 20;
        } catch (int e) {
            cout << "Caught inner exception: " << e << endl;
            throw;  // Rethrow the exception
        }
    } catch (int e) {
        cout << "Caught outer exception: " << e << endl;
    }
    return 0;
}
```

### 9. **Catching Exception by Reference**
```cpp
#include <iostream>
using namespace std;

class MyException : public exception {
private:
    string message;
public:
    MyException(const string& msg) : message(msg) {}
    const char* what() const noexcept override {
        return message.c_str();
    }
};

int main() {
    try {
        throw MyException("Custom exception message!");
    } catch (const MyException& e) {
        cout << e.what() << endl;
    }
    return 0;
}
```

### 10. **Handling Multiple Types of Exceptions in One Block**
```cpp
#include <iostream>
using namespace std;

int main() {
    try {
        throw 10;  // Integer exception
        //throw "Error";  // String exception
    } catch (...) {
        cout << "Caught an unknown exception!" << endl;
    }
    return 0;
}
```

### 11. **Exception Handling with Dynamic Memory Allocation**
```cpp
#include <iostream>
using namespace std;

int* allocateMemory(int size) {
    if (size < 0) {
        throw "Invalid size!";
    }
    return new int[size];
}

int main() {
    try {
        int* arr = allocateMemory(-5);  // Invalid size
    } catch (const char* msg) {
        cout << "Exception: " << msg << endl;
    }
    return 0;
}
```

### 12. **Exception Handling for Division by Zero**
```cpp
#include <iostream>
using namespace std;

int divide(int a, int b) {
    if (b == 0) {
        throw "Division by zero error!";
    }
    return a / b;
}

int main() {
    try {
        cout << divide(10, 0) << endl;  // Division by zero
    } catch (const char* msg) {
        cout << "Exception: " << msg << endl;
    }
    return 0;
}
```

### 13. **Stack Unwinding in C++**
```cpp
#include <iostream>
using namespace std;

void function() {
    try {
        throw 100;
    } catch (int e) {
        cout << "Caught exception: " << e << endl;
    }
}

int main() {
    function();
    return 0;
}
```

### 14. **Exception Handling for File Handling**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    try {
        ifstream file("nonexistent.txt");
        if (!file) {
            throw "File not found!";
        }
        file.close();
    } catch (const char* msg) {
        cout << "Exception: " << msg << endl;
    }
    return 0;
}
```

### 15. **Custom Exception Class with Multiple Fields**
```cpp
#include <iostream>
using namespace std;

class MyException : public exception {
private:
    int code;
    string message;
public:
    MyException(int c, const string& m) : code(c), message(m) {}
    const char* what() const noexcept override {
        return message.c_str();
    }
    int getCode() const { return code; }
};

int main() {
    try {
        throw MyException(404, "Not Found");
    } catch (const MyException& e) {
        cout << "Error code: " << e.getCode() << ", Message: " << e.what() << endl;
    }
    return 0;
}
```

### 16. **Catching Exception from Multiple Functions**
```cpp
#include <iostream>
using namespace std;

void function() {
    throw "Exception in function!";
}

int main() {
    try {
        function();
    } catch (const char* msg) {
        cout << "Caught exception: " << msg << endl;
    }
    return 0;
}
```

### 17. **Exception Handling with Standard Library Functions**
```cpp
#include <iostream>
#include <stdexcept>
using namespace std;

int main() {
    try {
        throw invalid_argument("Invalid argument error!");
    } catch (const invalid_argument& e) {
        cout << "Caught exception: " << e.what() << endl;
    }
    return 0;
}
```

### 18. **Catching Standard Library Exceptions**
```cpp
#include <iostream>
#include <stdexcept>
using namespace std;

int main() {
    try {
        throw out_of_range("Out of range exception!");
    } catch (const out_of_range& e) {
        cout << "Caught exception: " << e.what() << endl;
    }
    return 0;
}
```

### 19. **Exception Handling in Constructors**
```cpp
#include <iostream>
using namespace std;

class MyClass {
public:
    MyClass(int x) {
        if (x < 0) {
            throw "Invalid value!";
        }
        cout << "MyClass object created with value: " << x << endl;
    }
};

int main() {
    try {
        MyClass obj(-5);
    } catch (const char* msg) {
        cout << "Exception: " << msg << endl;
    }
    return 0;
}
```

### 20. **Exception Propagation Between Functions**
```cpp
#include <iostream>
using namespace std;

void function1() {
    throw "Error in function1!";
}

void function2() {
    try {
        function1();
    } catch (const char* msg) {
        cout << "Caught in function2: " << msg << endl;
        throw;  // Propagate exception
    }
}

int main() {
    try {
        function2();
    } catch (const char* msg) {
        cout << "Caught in main: " << msg << endl;
    }
    return 0;
}
```

---

These examples cover various aspects of exception handling in C++, from basic usage to advanced features like custom exceptions, handling multiple types of exceptions, and dealing with specific cases like division by zero or file handling.

Let me know if you'd like more details or further examples! 
