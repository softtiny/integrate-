#  4 ways a shader can receive data.
- Attributes, Buffers, and Vertex Arrays
- Uniforms
- Textures
- Varyings

```mermaid
mindmap
  root((shader))
    VERTEX_SHADER
    FRAGMENT_SHADER
```

###### createShader
```js
gl.createShader(...)
gl.shaderSource(...)
gl.compileShader(...)
gl.getShaderParameter(...)
gl.deleteShader(...)
```

###### createProgram
```js
gl.createProgram(...)
gl.attachShader(program,vertexShader)
gl.attachShader(program,fragmentShader)
gl.linkProgram(...)
gl.getProgramParameter(...)
```

-  look up where the vertex data needs to go.[**AttributeLocation**]

``` mermaid
erDiagram
    
    PROGRAM {
        Shader VERTEX_SHADER
        Shader FRAGMENT_SHADER
    }
    Shader {
      string source
    }
    VertexShaderSource {
      vec4 a_position
    }
    PROGRAM ||--|{ Shader : use
    AttributeLocation {
      data positionAttributeLocation
    }
    WEBGL {
      attribute VertexAttribArray
    }
    AttributeLocation ||--|| PROGRAM : gl_Position
    WEBGL ||--|| AttributeLocation : run_get
    WEBGL ||--o{ AttributeLocation : enable
    AttributeLocation ||--|| Shader : VERTEX_SHADER
    Shader ||--|{ VertexShaderSource : use
    AttributeLocation ||--|| VertexShaderSource : gl_Position
```
- **ARRAY_BUFFER** [Create a buffer and put three 2d clip space points in it]
- **VertexArray** [Create a vertex array object (attribute state)]
```mermaid
erDiagram
  Data {
    Float32Array numbers
  }
  Buffer {

  }
  WEBGL {
    VertexArray vao
  }
  WEBGL ||--o{ WEBGL : bindVertexArray-vao
  WEBGL ||--o{ Buffer : bind
  Buffer ||--o{ Data : bufferData_positions
  Buffer ||--o{ ARRAY_BUFFER : bufferData
  Buffer ||--o{ STATIC_DRAW : bufferData
```

- Tell the attribute how to get data out of positionBuffer (ARRAY_BUFFER)
  - **size** - size of components per iteration
  - **type** - the data is 32bit floats
  - **normalize** -don't normalize the data
  - **stride** 0 = move forward size * sizeof(type) each iteration to get the next position
  - **offset** start at the beginning of the buffer

```mermaid
mindmap
  root((vertexAttribPointer))
    positionAttributeLocation
    size
    type
    normalize
    stride
    offset
```
```mermaid
stateDiagram
    [*] --> Canva_size
    Canva_size --> viewport

    [*] --> clearColor
    [*] --> clear
    [*] --> useProgram
    [*] --> bindVertexArray
    [*] --> draw
    viewport --> [*]
    clearColor --> [*]
    clear --> [*]
    useProgram --> [*]
    bindVertexArray --> [*]
    draw --> [*]
```
---

- draw
  - type = gl.TRIANGLES
  - offset 0
  - count number

```mermaid
mindmap
  root((draw))
    type
    offset
    count number
```

---