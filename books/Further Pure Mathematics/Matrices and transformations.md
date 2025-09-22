```mermaid
---
title: Direct flights between countries by one airline.
---
flowchart TB
    UK([UK])
    Philippines([Philippines])
    Singapore([Singapore])
    Australia([Australia])
    NewZealand([New Zealand])
    UK --- Singapore
    UK --- Singapore
    Philippines --- Singapore
    Singapore --- Australia
    Singapore --- Australia
    Singapore --- Australia
    Singapore --- Australia
    Singapore --- NewZealand
    Singapore --- NewZealand
    NewZealand --- Australia
```

1.1 Matrices
represent the number of direct flights between each pair of countries

| ****            | **Australia** | **New Zealand** | **Philippines** | **Singapore** | **UK** |
|-----------------|---------------|-----------------|-----------------|---------------|--------|
| **Australia**   | 0             | 1               | 0               | 4             | 0      |
| **New Zealand** | 1             | 0               | 0               | 2             | 0      |
| **Philippines** | 0             | 0               | 0               | 1             | 0      |
| **Singapore**   | 4             | 2               | 1               | 0             | 2      |
| **UK**          | 0             | 0               | 0               | 2             | 0      |

matrix  is usually written inside curved brackets.

$\begin{bmatrix}
0 & 1 & 0 & 4 & 0\\
1 & 0 & 0 & 2 & 0\\
0 & 0 & 0 & 1 & 0\\
4 & 2 & 1 & 0 & 2\\
0 & 0 & 0 & 2 & 0\\
\end{bmatrix}$

---

- Special matrices
    - square matrices
        1.  have the same number ofrows as columns 
    - **identity matrix** or **unit matrix**
        - $\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}$
        - $\begin{bmatrix}1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$
    - **zero matrix**
        - $\begin{bmatrix}0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix}$

---

Matrices can be added or subtracted if they are of the same order.

$\begin{bmatrix}
2 & 4 & 0 \\
-1 & 3 & 5 \\
\end{bmatrix} + \begin{bmatrix}
1 & -1 & 4 \\
2 & 0 & -5 \\
\end{bmatrix} = \begin{bmatrix}
3 & 3 & 4 \\
1 & 3 & 0 \\
\end{bmatrix}$

$\begin{bmatrix}
2 & -3 \\
4 & 1  \\
\end{bmatrix} - \begin{bmatrix}
7 & -3 \\
-1 & 2 \\
\end{bmatrix} = \begin{bmatrix}
-5 & 0 \\
5 & -1 \\
\end{bmatrix}$