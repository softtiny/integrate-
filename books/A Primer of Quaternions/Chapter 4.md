

### **Equations of First Degree**

1. **Definition of Linear Functions**
    * The concept of a linear function in quaternion algebra.
    * Properties of additivity and scalar commutativity: $f(x + y) = f(x) + f(y)$ and $f(cx) = c f(x)$.


2. **The General Linear Quaternion Equation**
    * The standard form of terms in a first-degree equation: $axb$, where $x$ is the unknown quaternion, and $a, b$ are known quaternions.
    * The general linear equation expressed as a sum of such terms: $\sum a_i x b_i = c$.


3. **Linear Vector Functions (Nonions)**
    * Restriction of the linear function to vectors (3D space).
    * Introduction of the "Nonion" (a linear transformation involving 9 scalar parameters, equivalent to a $3 \times 3$ matrix).


4. **Conjugate and Self-Conjugate Functions**
    * Defining the conjugate of a linear function.
    * Symmetric (self-conjugate) and anti-symmetric (skew) parts of a linear transformation.


5. **Inversion of Linear Functions**
    * Solving the equation $\phi(x) = y$ for the unknown vector $x$.
    * Hamilton's method of inversion.


6. **The Characteristic Cubic Equation**
    * The discovery that every linear vector function satisfies a cubic equation (a special case of the Cayley-Hamilton theorem).
    * Roots of the linear function (eigenvalues and eigenvectors in modern terminology).



---

### **Summary of Key Concepts**

#### **1. The Nature of First-Degree Equations in Quaternions**

In ordinary algebra, a first-degree (linear) equation looks like $ax = c$. However, because quaternion multiplication is **non-commutative** ($ab \neq ba$), a first-degree term can take the form $axb$. Therefore, the most general equation of the first degree in quaternions is written as a series of terms:
$a_1xb_1 + a_2xb_2 + \dots + a_nxb_n = c$
Hathaway explains that studying this equation is equivalent to studying general linear transformations in four-dimensional (quaternion) space, or three-dimensional (vector) space when the scalar parts are removed.

#### **2. Linear Vector Functions ($\phi \rho$)**

A major portion of the chapter is dedicated to the **linear vector function**, usually denoted by the Greek letter $\phi$. If you input a vector $\rho$, the function outputs another vector $\phi(\rho)$ such that the operation is completely linear. Hathaway demonstrates how this function describes geometric transformations like stretching, compressing, and rotating space. Because this transformation maps a 3D vector to another 3D vector, it requires 9 scalar constants to fully define it, earning it the historical name **"Nonion."**

#### **3. Conjugates and Strains**

Hathaway introduces the conjugate of a linear function, $\phi'$. He shows that any linear vector function can be split into two parts:

* A **Self-Conjugate** part (where $\phi = \phi'$). Geometrically, this represents a pure strain (stretching along specific axes without rotation).
* A **Skew** part. Geometrically, this represents a pure rotation.
This mirrors the modern decomposition of a matrix into symmetric and antisymmetric parts.

#### **4. Inversion and the Characteristic Equation**

The ultimate goal of the chapter is **inversion**—finding the unknown vector $\rho$ when given $\phi(\rho) = \delta$. To solve this without the modern matrix inverse, Hathaway walks through Hamilton’s brilliant algebraic workaround.

He demonstrates that every linear vector function satisfies a specific **cubic equation** (the characteristic equation):
$\phi^3 - m_2\phi^2 + m_1\phi - m_0 = 0$
where $m_0, m_1, m_2$ are scalar invariants of the transformation (analogous to the determinant and trace of a matrix). By manipulating this cubic equation, one can algebraically solve for $\phi^{-1}$ (the inverse operator), thereby easily solving the first-degree equation for the unknown variable $x$.
