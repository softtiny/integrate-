# [glmatrix](https://github.com/toji/gl-matrix)

## Javascript Matrix and Vector library for High Performance WebGL apps 

- Modules
  - glMatrix
  - mat2 (2x2 Matrix)
  - mat2d ( a short form for the 3x3 matrix)
  - mat3 (3x3 Matrix)
  - mat4 (4x4 Matrix)
  - quat
  - quat2
  - vec2 (2 Dimensional Vector)
  - vec3 (3 Dimensional Vector)
  - vec4 (4 Dimensional Vector)


## Codes

```mermaid
flowchart LR
    canvas[canvas]
    gl["getContext('webgl')"]
    program[program]
    VERTEX_SHADER["`shader=gl.createShader(VERTEX_SHADER)
    gl.shaderSource(shader, vertexShaderSource);
    gl.compileShader(shader)
    `"]
    FRAGMENT_SHADER["`shader=gl.createShader(FRAGMENT_SHADER)
    gl.shaderSource(shader, fragmentShaderSource);
    gl.compileShader(shader)
    `"]
    vertices["`Float32Array
    0.0,  0.5,  0.0,
    -0.5, -0.5,  0.0,
    0.5, -0.5,  0.0
    `"]
    vertexBuffer["`vertexBuffer = gl.createBuffer()
    gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer)
    gl.bufferData(gl.ARRAY_BUFFER, vertices:Float32Array, gl.STATIC_DRAW)
    `"]
    program_opt["`gl.attachShader(program, vertex_shader)
    gl.attachShader(program, fragment_shader)
    gl.linkProgram(program)
    gl.useProgram(program)
    `"]
    canvas --> gl
    gl -- gl.createProgram() --> program
    gl -- linkProgram --> program
    gl -- useProgram --> program
    gl -- attachShader --> program
    gl -- attachShader --> VERTEX_SHADER
    gl -- attachShader --> FRAGMENT_SHADER
    program -- attachShader --> VERTEX_SHADER
    program -- attachShader --> FRAGMENT_SHADER
    program --> program_opt
    gl -- bindBuffer --> vertexBuffer
    gl -- bufferData --> vertices


    gl_mothods["`gl.createShader(type:gl.VERTEX_SHADER|gl.FRAGMENT_SHADER)
    gl.shaderSource
    gl.compileShader
    gl.createProgram
    gl.attachShader
    gl.linkProgram
    gl.useProgram
    gl.createBuffer
    gl.bindBuffer(gl.ARRAY_BUFFER,vertexBuffer)
    gl.bufferData(gl.ARRAY_BUFFER, vertices:Float32Array, gl.STATIC_DRAW);
    gl.getAttribLocation(program, 'aPosition');
    gl.enableVertexAttribArray
    gl.vertexAttribPointer(positionLocation, 3, gl.FLOAT, false, 0, 0)
    gl.getUniformLocation(program, 'uModelMatrix')
    gl.getUniformLocation(program, 'uViewMatrix')
    gl.getUniformLocation(program, 'uProjectionMatrix')
    gl.uniformMatrix4fv
    gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT)
    gl.drawArrays(gl.TRIANGLES, 0, 3);
    `"]
    gl --> gl_mothods
```