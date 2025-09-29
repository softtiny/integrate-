Multiplication of matrices

---



$\begin{bmatrix}
3 & 1 & 2 & 1 \\
2 & 2 & 4 & 1 \\
\end{bmatrix} \begin{bmatrix}
5\\
2\\
3\\
3\\
\end{bmatrix} = \begin{bmatrix}
26\\
29
\end{bmatrix}$


---

Multiplying a matrix by the identity matrix has no effect.

$\begin{bmatrix}
3 & 2 \\
-1 & 2 \\
\end{bmatrix}\begin{bmatrix}
1 & 0 \\
0 & 1 \\
\end{bmatrix} = \begin{bmatrix}
3 & 2 \\
-1 & 2 \\
\end{bmatrix}$


---

**AB=C**
**BA=D**

$\begin{bmatrix}
3 & 2 \\
-1 & 2 \\
\end{bmatrix}\begin{bmatrix}
1 & 2 \\
3 & 1 \\
\end{bmatrix} = \begin{bmatrix}
9 & 8 \\
5 & 0 \\
\end{bmatrix}$

$\begin{bmatrix}
1 & 2 \\
3 & 1 \\
\end{bmatrix}\begin{bmatrix}
3 & 2 \\
-1 & 2 \\
\end{bmatrix} = \begin{bmatrix}
1 & 6 \\
8 & 8\\
\end{bmatrix}$

---

**AB=BA**

$\begin{bmatrix}
3 & 0 \\
0 & 2 \\
\end{bmatrix}\begin{bmatrix}
4 & 0 \\
0 & -5 \\
\end{bmatrix} = \begin{bmatrix}
12 & 0 \\
0 & -10 \\
\end{bmatrix}$

$\begin{bmatrix}
4 & 0 \\
0 & -5 \\
\end{bmatrix}\begin{bmatrix}
3 & 0 \\
0 & 2 \\
\end{bmatrix} = \begin{bmatrix}
12 & 0 \\
0 & -10\\
\end{bmatrix}$


---

Definition of **Diagonal Matrices**

$\begin{bmatrix}
a_{11} & 0 & ⋯ & 0 \\
0 & a_{22} & ⋯ & 0 \\
⋮ & ⋮ & ⋱ & ⋮ \\
0 & 0 & ⋯ & a_{nn} \\
\end{bmatrix}$

---

matrix $ A = \begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix}$


$ A^2 = \begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix}\begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix} = \begin{bmatrix}
4 & 3 \\
0 & 1\\
\end{bmatrix}$

$ A^3 = \begin{bmatrix}
4 & 3 \\
0 & 1\\
\end{bmatrix}\begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix} = \begin{bmatrix}
8 & 7 \\
0 & 1\\
\end{bmatrix}$

$ A^4 = \begin{bmatrix}
8 & 7 \\
0 & 1\\
\end{bmatrix}\begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix} = \begin{bmatrix}
16 & 15 \\
0 & 1\\
\end{bmatrix}$

$ A^n = \begin{bmatrix}
2^{n-1} & 2^{n-1}-1 \\
0 & 1\\
\end{bmatrix}\begin{bmatrix}
2 & 1 \\
0 & 1\\
\end{bmatrix} = \begin{bmatrix}
2^n & 2^n-1 \\
0 & 1\\
\end{bmatrix}$