
# 10 Examples on Templates in C++

Here are **10 examples** on **Templates in C++**. These examples will cover various types of templates, including function templates, class templates, and template specialization.

### 1. **Basic Function Template**
```cpp
#include <iostream>
using namespace std;

template <typename T>
T add(T a, T b) {
    return a + b;
}

int main() {
    cout << "Sum of integers: " << add(5, 10) << endl;
    cout << "Sum of doubles: " << add(3.5, 2.5) << endl;
    return 0;
}
```

### 2. **Template with Multiple Types**
```cpp
#include <iostream>
using namespace std;

template <typename T, typename U>
auto multiply(T a, U b) -> decltype(a * b) {
    return a * b;
}

int main() {
    cout << "Multiplying int and float: " << multiply(3, 2.5) << endl;
    return 0;
}
```

### 3. **Class Template**
```cpp
#include <iostream>
using namespace std;

template <typename T>
class Box {
private:
    T value;
public:
    void setValue(T val) {
        value = val;
    }
    T getValue() {
        return value;
    }
};

int main() {
    Box<int> intBox;
    intBox.setValue(10);
    cout << "Integer value: " << intBox.getValue() << endl;

    Box<double> doubleBox;
    doubleBox.setValue(5.5);
    cout << "Double value: " << doubleBox.getValue() << endl;

    return 0;
}
```

### 4. **Template Specialization**
```cpp
#include <iostream>
using namespace std;

template <typename T>
class Printer {
public:
    void print(T val) {
        cout << "Generic print: " << val << endl;
    }
};

// Template specialization for type `char`
template <>
class Printer<char> {
public:
    void print(char val) {
        cout << "Character print: " << val << endl;
    }
};

int main() {
    Printer<int> intPrinter;
    intPrinter.print(42);

    Printer<char> charPrinter;
    charPrinter.print('A');

    return 0;
}
```

### 5. **Template with Default Arguments**
```cpp
#include <iostream>
using namespace std;

template <typename T = int, typename U = double>
T sum(T a, U b) {
    return a + b;
}

int main() {
    cout << "Sum with default argument (int, double): " << sum(5, 3.5) << endl;
    cout << "Sum with default argument (int, int): " << sum<>(3, 4) << endl;
    return 0;
}
```

### 6. **Template and Recursion**
```cpp
#include <iostream>
using namespace std;

template <typename T>
T factorial(T n) {
    if (n == 0) return 1;
    return n * factorial(n - 1);
}

int main() {
    cout << "Factorial of 5: " << factorial(5) << endl;
    cout << "Factorial of 6: " << factorial(6) << endl;
    return 0;
}
```

### 7. **Variadic Templates**
```cpp
#include <iostream>
using namespace std;

template <typename... Args>
void print(Args... args) {
    (cout << ... << args) << endl;
}

int main() {
    print(1, 2, 3, "Hello", 4.5);  // Prints: 123Hello4.5
    return 0;
}
```

### 8. **Template with Non-Type Parameters**
```cpp
#include <iostream>
using namespace std;

template <typename T, int N>
void printArray(T (&arr)[N]) {
    for (int i = 0; i < N; ++i) {
        cout << arr[i] << " ";
    }
    cout << endl;
}

int main() {
    int arr[] = {1, 2, 3, 4};
    printArray(arr);

    double arr2[] = {3.5, 4.5, 5.5};
    printArray(arr2);

    return 0;
}
```

### 9. **SFINAE (Substitution Failure Is Not An Error)**
```cpp
#include <iostream>
#include <type_traits>
using namespace std;

template <typename T>
typename std::enable_if<std::is_integral<T>::value, void>::type
printValue(T val) {
    cout << "Integer value: " << val << endl;
}

template <typename T>
typename std::enable_if<std::is_floating_point<T>::value, void>::type
printValue(T val) {
    cout << "Floating point value: " << val << endl;
}

int main() {
    printValue(42);      // Calls integer version
    printValue(3.14);    // Calls floating-point version
    return 0;
}
```

### 10. **Template with Smart Pointers**
```cpp
#include <iostream>
#include <memory>
using namespace std;

template <typename T>
void printUniquePointer(unique_ptr<T>& ptr) {
    cout << "Value from unique pointer: " << *ptr << endl;
}

int main() {
    unique_ptr<int> ptr = make_unique<int>(100);
    printUniquePointer(ptr);
    return 0;
}
```

---

These examples cover a variety of common use cases for templates in C++, from simple function templates to advanced features like template specialization, variadic templates, and SFINAE.

Let me know if you need any further explanation or additional examples!
