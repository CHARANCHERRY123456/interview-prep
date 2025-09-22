# Java Revision Notes – Detailed

This document provides a deeper explanation of key Java Virtual Machine (JVM) components: **Class Loader** and **Execution Engine**.  
These notes are suitable for both quick revision and for someone new to these concepts.

---

## 1️⃣ Class Loader

### What is a Class Loader?
The **Class Loader** is a part of the **Java Runtime Environment (JRE)** responsible for **dynamically loading Java classes into the JVM memory at runtime**.  
When we run a Java program, the `.class` bytecode files are not all loaded at once. Instead, they are loaded as needed by the Class Loader.

Without the Class Loader, the JVM would not know how to locate and bring the compiled bytecode into memory.

---

### Types of Class Loaders

Java uses a **hierarchical (parent-delegation) model** of class loading.  
The major class loaders are:

1. **Bootstrap Class Loader**
   - The top-level loader and the parent of all other class loaders.
   - Implemented in native code, not Java.
   - Loads the **core Java API classes** like `java.lang`, `java.util`, etc., usually from `JAVA_HOME/lib` (like `rt.jar` in older JDKs).
   - Does not have a parent (returns `null` if you call `getParent()` on it).

2. **Extension (Platform) Class Loader**
   - Child of Bootstrap.
   - Loads classes from the `jre/lib/ext` directory or any other directory specified by the `java.ext.dirs` system property.
   - It is responsible for loading **Java extension libraries** (e.g., additional APIs provided by the platform).

3. **System (Application) Class Loader**
   - Child of Extension Class Loader.
   - Loads classes found in the **classpath** specified when running Java (`-cp` or `CLASSPATH` environment variable).
   - All your application classes and external JARs are loaded by this loader.

4. **Custom / User-defined Class Loader**
   - You can create your own loader by extending `java.lang.ClassLoader`.
   - Used when you need to **load classes from a non-standard location** (e.g., network, encrypted files, dynamically generated code).
   - Common in application servers and frameworks (like Tomcat, OSGi).

---

### Delegation Hierarchy

The **Parent Delegation Model** ensures class uniqueness and security:

1. When asked to load a class, a loader **first delegates** the task to its parent.
2. If the parent cannot find the class, the current loader attempts to load it itself.

This prevents malicious code from replacing core Java classes because the Bootstrap loader always gets the first chance to load standard classes.

Hierarchy:  
`Bootstrap → Extension → System → Custom`

---

### Steps in Class Loading

The JVM loads classes in these phases:

1. **Loading**  
   - The class loader reads the `.class` file and stores the bytecode in memory.
2. **Linking**  
   - **Verification:** Ensures bytecode is valid and secure (no memory corruption, etc.).  
   - **Preparation:** Allocates memory for static variables and sets default values.  
   - **Resolution:** Converts symbolic references (class names) into direct references in memory.
3. **Initialization**  
   - Executes static initializers and static blocks in the class.

---

### Important ClassLoader Methods
- `loadClass(String name)`: Loads the specified class.
- `getParent()`: Returns the parent class loader.
- `defineClass(byte[] b, int off, int len)`: Converts a byte array into a `Class` object (commonly used in custom class loaders).

---

### Example: Viewing Class Loader
```java
public class Demo {
    public static void main(String[] args) {
        ClassLoader cl = Demo.class.getClassLoader();
        System.out.println("ClassLoader: " + cl);
        System.out.println("Parent: " + cl.getParent());
    }
}
```
Expected output shows the **Application ClassLoader** and its parent hierarchy.

---

## 2️⃣ Execution Engine

### What is the Execution Engine?
The **Execution Engine (EE)** is the part of the JVM that **executes the bytecode instructions** of your program.  
After the Class Loader brings bytecode into memory, the Execution Engine takes over and runs it on the host machine.

Think of it as the "brain" of the JVM where actual code execution happens.

---

### Major Components of the Execution Engine

1. **Interpreter**
   - Reads bytecode instructions **one by one** and executes them.
   - Simple but can be slow because every instruction must be interpreted each time.

2. **JIT (Just-In-Time) Compiler**
   - To overcome interpreter slowness, JVM uses JIT.
   - **Compiles frequently used ("hot") bytecode sections into native machine code at runtime.**
   - Types of JIT compilation:
     - **Method JIT:** Compiles entire methods.
     - **Adaptive JIT:** Monitors performance and compiles only the hot spots.
   - Result: After initial warm-up, Java programs can run **almost as fast as C/C++**.

3. **Garbage Collector (GC)**
   - Automatically frees memory by deleting objects no longer referenced.
   - Runs in the background so developers don't have to manage memory manually.

4. **Native Method Interface & Libraries**
   - Uses **JNI (Java Native Interface)** to call platform-specific native code (like C/C++ libraries) when required.

---

### How Execution Works

**Compilation & Execution Flow:**
```
Source Code (.java)
      ↓ javac
Bytecode (.class)
      ↓ Class Loader loads classes
Execution Engine executes bytecode
      ↓
Interpreter or JIT → Machine Code → CPU runs program
```

---

### Key Features of the Execution Engine

- **Platform Independence:** Runs bytecode on any machine with a JVM.
- **Performance Optimization:** JIT compilation and hotspot detection speed up execution.
- **Automatic Memory Management:** Garbage Collection prevents memory leaks.

---

### Performance Tip
- Applications with repetitive logic benefit most from JIT as the compiled native code runs significantly faster than interpreted bytecode.

---

## 🔑 Quick Recap Table

| Component       | Role                                      | Key Points                                   |
|-----------------|-------------------------------------------|----------------------------------------------|
| **Class Loader** | Loads classes into JVM memory            | Bootstrap → Extension → System → Custom      |
| **Execution Engine** | Executes bytecode as native machine code | Interpreter + JIT + Garbage Collector       |

---

### 📌 Final Thoughts
- **Class Loader** ensures classes are properly loaded and verified.
- **Execution Engine** is responsible for actual program execution and optimization.

These two components, along with others like the **Runtime Data Areas**, form the core of the JVM architecture.
