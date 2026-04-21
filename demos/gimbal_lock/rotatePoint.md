
## rotatePoint 方法详解

```javascript
function rotatePoint(v, Y, P, R) {
  let [x, y, z] = v;
  // Roll (Y-axis)
  let r = deg(R);
  let x1 = x*Math.cos(r) + z*Math.sin(r);
  let y1 = y;
  let z1 = -x*Math.sin(r) + z*Math.cos(r);
  // ... 后续旋转
}
```

这个方法的核心是**应用三个旋转矩阵的复合变换**。让我从基础开始讲解：

### 1. **基础概念：旋转矩阵**

在3D空间中，绕坐标轴旋转一个点可以用旋转矩阵表示。对于绕各轴旋转θ角，有三个基本旋转矩阵：

#### 绕 X 轴旋转（Pitch - 俯仰）
```
Rx(θ) = [1      0        0    ]
        [0    cos(θ)  -sin(θ)]
        [0    sin(θ)   cos(θ)]
```

#### 绕 Y 轴旋转（Roll - 滚动）
```
Ry(θ) = [cos(θ)   0   sin(θ)]
        [  0      1     0   ]
        [-sin(θ)  0   cos(θ)]
```

#### 绕 Z 轴旋转（Yaw - 偏航）
```
Rz(θ) = [cos(θ)  -sin(θ)   0]
        [sin(θ)   cos(θ)   0]
        [  0        0      1]
```

### 2. **代码中的旋转顺序**

这段代码按照 **Yaw → Pitch → Roll** 的顺序应用旋转，但代码本身是**反向书写**的（从最后一次旋转开始）：

**数学表示**：`v' = Rz(yaw) × Rx(pitch) × Ry(roll) × v`

#### 第一步：绕 Y 轴旋转（Roll）
```javascript
let r = deg(R);
let x1 = x*Math.cos(r) + z*Math.sin(r);      // x' = x·cos(r) + z·sin(r)
let y1 = y;                                   // y' = y
let z1 = -x*Math.sin(r) + z*Math.cos(r);    // z' = -x·sin(r) + z·cos(r)
```

对应矩阵运算：
```
[x1]   [cos(r)   0   sin(r)] [x]
[y1] = [  0      1     0   ] [y]
[z1]   [-sin(r)  0   cos(r)] [z]
```

#### 第二步：绕 X 轴旋转（Pitch）
```javascript
let p = deg(P);
let x2 = x1;                                      // x'' = x'
let y2 = y1*Math.cos(p) - z1*Math.sin(p);        // y'' = y'·cos(p) - z'·sin(p)
let z2 = y1*Math.sin(p) + z1*Math.cos(p);        // z'' = y'·sin(p) + z'·cos(p)
```

对应矩阵运算：
```
[x2]   [1      0        0   ] [x1]
[y2] = [0    cos(p)  -sin(p)] [y1]
[z2]   [0    sin(p)   cos(p)] [z1]
```

#### 第三步：绕 Z 轴旋转（Yaw）
```javascript
let w = deg(Y);
let x3 = x2*Math.cos(w) - y2*Math.sin(w);        // x''' = x''·cos(w) - y''·sin(w)
let y3 = x2*Math.sin(w) + y2*Math.cos(w);        // y''' = x''·sin(w) + y''·cos(w)
let z3 = z2;                                      // z''' = z''
```

对应矩阵运算：
```
[x3]   [cos(w)  -sin(w)   0] [x2]
[y3] = [sin(w)   cos(w)   0] [y2]
[z3]   [  0        0      1] [z2]
```

### 3. **核心数学知识**

#### **欧拉角（Euler Angles）**
- 用三个角度（Yaw, Pitch, Roll）描述3D旋转
- 这就是万向节（Gimbal Lock）问题的源头
- 代码中的三个环就代表这三个旋转轴

#### **旋转矩阵的性质**
1. **正交矩阵**：R^T × R = I（转置 = 逆矩阵）
2. **行列式为1**：det(R) = 1
3. **矩阵乘法不可交换**：顺序很重要！

#### **角度转弧度**
```javascript
function deg(d) { return d * Math.PI / 180; }
```
这是基本的单位转换。

### 4. **实际应用在吉布尔（万向节）中**

在这个代码中：
- **外环（Z-yaw）**：红色，控制总体方向
- **中环（X-pitch）**：蓝色，控制俯仰
- **内环（Y-roll）**：绿色，控制滚动

每个环的旋转都是**先前旋转的基础上**进行的，这正是矩阵乘法的几何意义。

### 5. **视觉演示**



| 概念 | 说明 |
|------|------|
| **旋转矩阵** | 3×3矩阵，将3D点通过矩阵乘法进行旋转 |
| **欧拉角** | 用Yaw、Pitch、Roll三个角度描述任意旋转 |
| **矩阵乘法** | 不可交换，顺序重要：Rz × Rx × Ry × v |
| **正交矩阵** | 旋转矩阵是正交矩阵，满足R^T = R^(-1) |
| **三角恒等式** | cos²θ + sin²θ = 1，sin(θ+φ) 等 |
| **复合变换** | 多次旋转可以通过矩阵相乘合并成一个旋转 |

