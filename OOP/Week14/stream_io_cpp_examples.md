
# 15 Examples on Stream I/O in C++

Here are **15 examples** on the topic of **Stream I/O in C++**. These examples cover different aspects of input/output operations, both for console and file handling.

### 1. **Basic Console Input/Output:**
```cpp
#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Enter a number: ";
    cin >> num;
    cout << "You entered: " << num << endl;
    return 0;
}
```

### 2. **Reading Multiple Values Using `cin`:**
```cpp
#include <iostream>
using namespace std;

int main() {
    int age;
    double salary;
    cout << "Enter your age and salary: ";
    cin >> age >> salary;
    cout << "Age: " << age << ", Salary: " << salary << endl;
    return 0;
}
```

### 3. **Reading Strings with `getline`:**
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string name;
    cout << "Enter your name: ";
    getline(cin, name);
    cout << "Hello, " << name << "!" << endl;
    return 0;
}
```

### 4. **Outputting Floating-Point Values with Precision:**
```cpp
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double pi = 3.14159265358979;
    cout << fixed << setprecision(2) << "Pi rounded to 2 decimal places: " << pi << endl;
    return 0;
}
```

### 5. **File Writing Example with `ofstream`:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ofstream outFile("output.txt");
    if (outFile) {
        outFile << "This is a test file." << endl;
        outFile << "This file contains some sample text." << endl;
        outFile.close();
    } else {
        cout << "Error opening file." << endl;
    }
    return 0;
}
```

### 6. **File Reading Example with `ifstream`:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream inFile("output.txt");
    string line;
    if (inFile) {
        while (getline(inFile, line)) {
            cout << line << endl;
        }
        inFile.close();
    } else {
        cout << "Error opening file." << endl;
    }
    return 0;
}
```

### 7. **Checking If File Opens Successfully:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream inFile("nonexistent.txt");
    if (!inFile) {
        cout << "Failed to open the file." << endl;
    } else {
        cout << "File opened successfully." << endl;
        inFile.close();
    }
    return 0;
}
```

### 8. **Reading Integer and Writing to a File:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    int number = 123;
    ofstream outFile("number.txt");
    if (outFile) {
        outFile << number << endl;
        outFile.close();
    } else {
        cout << "Error opening file." << endl;
    }
    return 0;
}
```

### 9. **Appending Data to a File:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ofstream outFile("output.txt", ios::app);
    if (outFile) {
        outFile << "Appending new data." << endl;
        outFile.close();
    } else {
        cout << "Error opening file." << endl;
    }
    return 0;
}
```

### 10. **Reading and Writing to the Same File with `fstream`:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    fstream file("output.txt", ios::in | ios::out);
    if (file) {
        string line;
        while (getline(file, line)) {
            cout << line << endl;
        }
        file.seekp(0, ios::end);
        file << "Adding new line." << endl;
        file.close();
    } else {
        cout << "Error opening file." << endl;
    }
    return 0;
}
```

### 11. **Reading and Writing Multiple Data Types to a File:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    int a = 10;
    double b = 20.5;
    ofstream outFile("data.txt");
    if (outFile) {
        outFile << a << " " << b << endl;
        outFile.close();
    }
    ifstream inFile("data.txt");
    if (inFile) {
        int x;
        double y;
        inFile >> x >> y;
        cout << "Read from file: " << x << " " << y << endl;
        inFile.close();
    }
    return 0;
}
```

### 12. **Reading and Writing Data in Binary Format:**
```cpp
#include <iostream>
#include <fstream>
using namespace std;

struct Person {
    char name[50];
    int age;
};

int main() {
    Person p1 = {"John", 25};
    ofstream outFile("person.dat", ios::binary);
    if (outFile) {
        outFile.write(reinterpret_cast<char*>(&p1), sizeof(Person));
        outFile.close();
    }
    
    Person p2;
    ifstream inFile("person.dat", ios::binary);
    if (inFile) {
        inFile.read(reinterpret_cast<char*>(&p2), sizeof(Person));
        cout << "Name: " << p2.name << ", Age: " << p2.age << endl;
        inFile.close();
    }
    return 0;
}
```

### 13. **Reading Input with Validation:**
```cpp
#include <iostream>
using namespace std;

int main() {
    int number;
    cout << "Enter a positive number: ";
    while (!(cin >> number) || number <= 0) {
        cout << "Invalid input! Please enter a positive number: ";
        cin.clear(); // Clear error flag
        cin.ignore(10000, '
'); // Ignore incorrect input
    }
    cout << "You entered: " << number << endl;
    return 0;
}
```

### 14. **Using `cerr` for Error Messages:**
```cpp
#include <iostream>
using namespace std;

int main() {
    int x = -1;
    if (x < 0) {
        cerr << "Error: Negative value entered." << endl;
    } else {
        cout << "Value is " << x << endl;
    }
    return 0;
}
```

### 15. **Writing and Reading Data with `stringstream`:**
```cpp
#include <iostream>
#include <sstream>
using namespace std;

int main() {
    stringstream ss;
    ss << "123 45.6 Hello";
    int num;
    double dec;
    string word;
    ss >> num >> dec >> word;
    cout << "Read from stringstream: " << num << ", " << dec << ", " << word << endl;
    return 0;
}
```

---

These examples cover a broad spectrum of stream operations in C++ such as file handling, input/output formatting, error handling, and usage of various types of streams (e.g., `ifstream`, `ofstream`, `fstream`, `stringstream`, and `cerr`). Feel free to modify and extend these examples to suit specific use cases or further explore advanced file I/O operations.
