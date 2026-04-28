# Examples on Cofactor of a Matrix

## Find the cofactor of $a_{11}$ in the matrix

```math
\begin{bmatrix} 1 & 3 \\ 5 & 7\end{bmatrix}\\
Minor \space M_{11} = 7\\
Cofactor \space of \space a_{11} = 7 \times (-1)^{(1+1)}=7
```

## Find the cofactor of $a_{12}$ in the matrix

```math
\begin{bmatrix} 1 & 4 & 6 \\ 8 & 7 & 9 \\ 4 & 0 & 5\end{bmatrix}\\
Minor \space M_{12} = determinant \space of \space  \begin{bmatrix} 8 & 9 \\ 4 & 5\end{bmatrix}\\
M_{12} = 40 - 36 = 4\\
Cofactor \space C_{12} \space of \space a_{12} = M_{12} \times (-1)^{1+2}\\
C_{12} = -4
```


## What is the cofactor matrix of

```math
\begin{bmatrix} 3 & 6 \\ 7 & 8\end{bmatrix}\\
M_{11} = 8 \space \space \space C_{11} = 8\times(-1)^{(1+1)} = 8\\
M_{12} = 7 \space \space \space C_{12} = 7\times(-1)^{(1+2)} = -7\\
M_{21} = 6 \space \space \space C_{21} = 6\times(-1)^{(2+1)} = -6 \\
M_{22} = 3 \space \space \space C_{22} = 3\times(-1)^{(2+2)} = 3 \\ 
Cofactor \space matrix \begin{bmatrix} 8 & -7 \\ -6 & 3\end{bmatrix}\\
```

## What is the cofactor matrix of

```math
\begin{bmatrix} 0 & -6 \\ -3 & -4\end{bmatrix}\\
M_{11} = -4 \space \space \space C_{11} = -4\times(-1)^{(1+1)} = -4\\
M_{12} = -3 \space \space \space C_{12} = -3\times(-1)^{(1+2)} = 3\\
M_{21} = -6 \space \space \space C_{21} = -6\times(-1)^{(2+1)} = 6 \\
M_{22} = 0 \space \space \space C_{22} = 0\times(-1)^{(2+2)} = 0 \\ 
Cofactor \space matrix \begin{bmatrix} -4 & 3 \\ 6 & 0\end{bmatrix}\\
```

## What is the cofactor matrix of

```math
\begin{bmatrix} 2 & 4 & 6 \\ 7 & 9 & 2 \\ 1 & 6 & 0\end{bmatrix}\\
Minor \space M_{11} = determinant \space of \space  \begin{bmatrix} 9 & 2 \\ 6 & 0\end{bmatrix}\\
M_{11} = 0 - 12 = -12\\
Cofactor \space C_{11} \space of \space a_{11} = M_{11} \times (-1)^{1+1}\\
C_{11} = -12\\[30px]


Minor \space M_{12} = determinant \space of \space  \begin{bmatrix} 7 & 2 \\ 1 & 0\end{bmatrix}\\
M_{12} = 0 - 2 = -2\\
Cofactor \space C_{12} \space of \space a_{12} = M_{12} \times (-1)^{1+2}\\
C_{12} = 2\\[30px]

Minor \space M_{13} = determinant \space of \space  \begin{bmatrix} 7 & 9 \\ 1 & 6\end{bmatrix}\\
M_{13} = 42 - 9 = 33\\
Cofactor \space C_{13} \space of \space a_{13} = M_{13} \times (-1)^{1+3}\\
C_{13} = 33\\[30px]

Minor \space M_{21} = determinant \space of \space  \begin{bmatrix} 4 & 6 \\ 6 & 0\end{bmatrix}\\
M_{21} = 0 - 36 = -36\\
Cofactor \space C_{21} \space of \space a_{21} = M_{21} \times (-1)^{2+1}\\
C_{21} = 36\\[30px]

Minor \space M_{22} = determinant \space of \space  \begin{bmatrix} 2 & 6 \\ 1 & 0\end{bmatrix}\\
M_{22} = 0 - 6 = -6\\
Cofactor \space C_{22} \space of \space a_{22} = M_{22} \times (-1)^{2+2}\\
C_{22} = -6\\[30px]


Minor \space M_{23} = determinant \space of \space  \begin{bmatrix} 2 & 4 \\ 1 & 6\end{bmatrix}\\
M_{23} = 12 - 4 = 8\\
Cofactor \space C_{23} \space of \space a_{23} = M_{23} \times (-1)^{2+3}\\
C_{23} = -8\\[30px]

Minor \space M_{31} = determinant \space of \space  \begin{bmatrix} 4 & 6 \\ 9 & 2\end{bmatrix}\\
M_{31} = 8 - 54 = -46\\
Cofactor \space C_{31} \space of \space a_{31} = M_{31} \times (-1)^{3+1}\\
C_{31} = -46\\[30px]

Minor \space M_{32} = determinant \space of \space  \begin{bmatrix} 2 & 6 \\ 7 & 2\end{bmatrix}\\
M_{32} = 4 - 42 = -38\\
Cofactor \space C_{32} \space of \space a_{32} = M_{32} \times (-1)^{3+2}\\
C_{32} = 38\\[30px]

Minor \space M_{33} = determinant \space of \space  \begin{bmatrix} 2 & 4 \\ 7 & 9\end{bmatrix}\\
M_{23} = 18 - 28 = -10\\
Cofactor \space C_{33} \space of \space a_{33} = M_{33} \times (-1)^{3+3}\\
C_{33} = -10\\[30px]


\begin{bmatrix} C_{11} & C_{12} & C_{13} \\ C_{21} & C_{22} & C_{23}\\ C_{31} & C_{32} & C_{33}\end{bmatrix}=
\begin{bmatrix} -12 & 2 & 33 \\ 36 & -6 & -8 \\ -46 & 38 & -10\end{bmatrix}\\

```