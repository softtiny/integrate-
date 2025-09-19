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