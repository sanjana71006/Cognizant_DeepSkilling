# Data Structures and Algorithms - notes.md

# Module 2: Data Structures and Algorithms

## Overview

Data Structures and Algorithms (DSA) are the foundation of efficient software development.

DSA helps in:

- Organizing data efficiently
- Optimizing memory usage
- Improving execution speed
- Solving complex problems systematically
- Building scalable applications

This module focuses on:

1. Analysis of Algorithms
2. Searching Algorithms
3. Sorting Algorithms
4. Arrays
5. Linked Lists
6. Recursion

---

# Learning Objectives

After completing this module, you should be able to:

- Choose appropriate data structures.
- Apply searching algorithms effectively.
- Use sorting algorithms efficiently.
- Analyze algorithm complexity.
- Design scalable solutions.
- Solve real-world problems using DSA.

---

# ANALYSIS OF ALGORITHMS

## Why DSA?

Without DSA:

- Programs become slow
- Memory usage increases
- Applications fail at scale

With DSA:

- Faster execution
- Better optimization
- Improved scalability

---

# Asymptotic Notations

Used to measure algorithm efficiency.

## Big O Notation

Measures worst-case performance.

Examples:

| Complexity | Name         |
| ---------- | ------------ |
| O(1)       | Constant     |
| O(log n)   | Logarithmic  |
| O(n)       | Linear       |
| O(n log n) | Linearithmic |
| O(n²)      | Quadratic    |
| O(2ⁿ)      | Exponential  |

---

# Best, Average and Worst Case

## Best Case

Minimum operations needed.

Example:

Linear Search

```java
Target found at first position
```

Time Complexity:

```text
O(1)
```

---

## Average Case

Expected performance.

Linear Search:

```text
O(n)
```

---

## Worst Case

Maximum operations needed.

Target at last position or absent.

```text
O(n)
```

---

# Exercise 1: Inventory Management System

## Scenario

Manage warehouse products efficiently.

## Suitable Data Structures

### ArrayList

Pros:

- Dynamic size
- Easy traversal

### HashMap

Pros:

- Fast searching
- Fast updating

### Product Class

```java
class Product {

    int productId;
    String productName;
    int quantity;
    double price;
}
```

## Time Complexity

| Operation | ArrayList | HashMap |
| --------- | --------- | ------- |
| Add       | O(1)      | O(1)    |
| Search    | O(n)      | O(1)    |
| Update    | O(n)      | O(1)    |
| Delete    | O(n)      | O(1)    |

---

# Exercise 2: E-Commerce Search Function ⭐ IMPORTANT

## Scenario

An e-commerce website needs extremely fast product searching.

---

## Linear Search

### Algorithm

Search elements one by one.

```java
public static int linearSearch(
        Product[] arr,
        int target) {

    for(int i=0;i<arr.length;i++) {

        if(arr[i].productId==target)
            return i;
    }

    return -1;
}
```

### Time Complexity

| Case    | Complexity |
| ------- | ---------- |
| Best    | O(1)       |
| Average | O(n)       |
| Worst   | O(n)       |

### Advantages

- Simple
- Works on unsorted data

### Disadvantages

- Slow for large datasets

---

## Binary Search

### Requirement

Array must be sorted.

### Algorithm

Repeatedly divide search space into halves.

```java
public static int binarySearch(
        Product[] arr,
        int target) {

    int low=0;
    int high=arr.length-1;

    while(low<=high){

        int mid=(low+high)/2;

        if(arr[mid].productId==target)
            return mid;

        else if(arr[mid].productId<target)
            low=mid+1;

        else
            high=mid-1;
    }

    return -1;
}
```

### Time Complexity

| Case    | Complexity |
| ------- | ---------- |
| Best    | O(1)       |
| Average | O(log n)   |
| Worst   | O(log n)   |

---

## Linear Search vs Binary Search

| Feature              | Linear     | Binary     |
| -------------------- | ---------- | ---------- |
| Sorted Data Required | No         | Yes        |
| Best Case            | O(1)       | O(1)       |
| Average Case         | O(n)       | O(log n)   |
| Worst Case           | O(n)       | O(log n)   |
| Suitable For         | Small Data | Large Data |

---

## Which is Better?

For E-Commerce Platforms:

✅ Binary Search

Reason:

- Millions of products
- Fast retrieval
- Better scalability

---

## Interview Question

Why is Binary Search faster?

Answer:

Because every comparison eliminates half of the remaining search space.

---

# SORTING ALGORITHMS

---

# Exercise 3: Sorting Customer Orders

## Bubble Sort

### Working

Repeatedly swap adjacent elements.

### Time Complexity

| Case    | Complexity |
| ------- | ---------- |
| Best    | O(n)       |
| Average | O(n²)      |
| Worst   | O(n²)      |

### Disadvantage

Slow for large datasets.

---

## Quick Sort

### Working

Choose pivot and partition.

### Time Complexity

| Case    | Complexity |
| ------- | ---------- |
| Best    | O(n log n) |
| Average | O(n log n) |
| Worst   | O(n²)      |

### Advantages

- Fast
- Efficient
- Widely used

---

## Bubble Sort vs Quick Sort

| Feature      | Bubble     | Quick      |
| ------------ | ---------- | ---------- |
| Average Case | O(n²)      | O(n log n) |
| Speed        | Slow       | Fast       |
| Usage        | Small Data | Large Data |

---

# ARRAYS

---

# Exercise 4: Employee Management System

## Array Representation

Arrays store elements in contiguous memory locations.

Example:

```java
int[] arr = {10,20,30,40};
```

Memory:

```text
1000 -> 10
1004 -> 20
1008 -> 30
1012 -> 40
```

---

## Array Operations

| Operation | Complexity |
| --------- | ---------- |
| Access    | O(1)       |
| Search    | O(n)       |
| Insert    | O(n)       |
| Delete    | O(n)       |
| Traverse  | O(n)       |

---

## Advantages

- Fast indexing
- Memory efficient

## Limitations

- Fixed size
- Costly insertion/deletion

---

# LINKED LISTS

---

# Exercise 5: Task Management System

## Definition

Collection of nodes connected via pointers.

---

## Singly Linked List

```text
10 -> 20 -> 30 -> NULL
```

Node:

```java
class Node {

    int data;
    Node next;
}
```

---

## Operations Complexity

| Operation        | Complexity |
| ---------------- | ---------- |
| Insert Beginning | O(1)       |
| Insert End       | O(n)       |
| Search           | O(n)       |
| Delete           | O(n)       |
| Traverse         | O(n)       |

---

## Advantages over Arrays

- Dynamic size
- Easy insertion
- Easy deletion

---

# Exercise 6: Library Management System

## Search Algorithms

### Linear Search

Works on unsorted data.

```text
O(n)
```

### Binary Search

Requires sorted data.

```text
O(log n)
```

### Conclusion

Small Data → Linear Search

Large Sorted Data → Binary Search

---

# RECURSION

# Exercise 7: Financial Forecasting ⭐ IMPORTANT

## Scenario

Predict future values using past growth rates.

---

## What is Recursion?

A function calling itself.

### Structure

```java
return function(smaller_problem);
```

Every recursive function needs:

1. Base Case
2. Recursive Call

---

## Example: Factorial

```java
public static int factorial(int n){

    if(n==0)
        return 1;

    return n * factorial(n-1);
}
```

### Execution

```text
factorial(4)

4 * factorial(3)
4 * 3 * factorial(2)
4 * 3 * 2 * factorial(1)
4 * 3 * 2 * 1
=24
```

---

## Financial Forecasting Example

Formula:

```text
Future Value = Present Value × (1 + Growth Rate)^Years
```

Recursive Version:

```java
public static double forecast(
        double value,
        double growthRate,
        int years){

    if(years==0)
        return value;

    return forecast(
        value*(1+growthRate),
        growthRate,
        years-1
    );
}
```

---

### Example

Current Value:

```text
1000
```

Growth Rate:

```text
10%
```

Years:

```text
3
```

Calculation:

```text
1000
1100
1210
1331
```

Output:

```text
1331
```

---

## Time Complexity

### Recursive Version

```text
O(n)
```

where n = number of years.

---

## Optimization

Problem:

Repeated recursive calculations can increase computation.

Solutions:

### Memoization

Store already computed results.

### Dynamic Programming

Reuse previous results instead of recalculating.

### Iterative Approach

Often more efficient.

```java
public static double forecastIterative(
        double value,
        double rate,
        int years){

    for(int i=0;i<years;i++){

        value=value*(1+rate);
    }

    return value;
}
```

# Quick Revision Table

| Topic              | Key Complexity |
| ------------------ | -------------- |
| Linear Search      | O(n)           |
| Binary Search      | O(log n)       |
| Bubble Sort        | O(n²)          |
| Quick Sort         | O(n log n)     |
| Array Access       | O(1)           |
| Linked List Search | O(n)           |
| Recursion Forecast | O(n)           |

---
