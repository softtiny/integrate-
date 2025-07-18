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
gl.createShader
gl.shaderSource
gl.compileShader
gl.getShaderParameter
gl.deleteShader
```

###### createProgram
```js
gl.createProgram
gl.attachShader(program,vertexShader)
gl.attachShader(program,fragmentShader)
gl.linkProgram
gl.getProgramParameter
```