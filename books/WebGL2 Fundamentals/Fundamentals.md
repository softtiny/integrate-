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

look up where the vertex data needs to go.

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
    AttributeLocation ||--|| Shader : VERTEX_SHADER
    Shader ||--|{ VertexShaderSource : use
    AttributeLocation ||--|| VertexShaderSource : gl_Position
```