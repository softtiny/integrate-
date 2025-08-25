# First thing


- Method 1
  ```mermaid
  ---
  title: WebGL2 2D Translation
  ---
  stateDiagram-v2
      state "x1,y1 --> x1+N,y1+N" as update
      state "gl.viewport" as viewport
      state "gl.clearColor();gl.clear(|)" as clear
      state "gl.bufferData()" as bufferData
      state "gl.drawArrays()" as drawArrays
      [*] --> update
      update --> viewport
      viewport --> clear
      clear --> bufferData 
      bufferData --> drawArrays
      drawArrays --> [*]
  ```
- Method 2
  ```mermaid
  ---
  title: upload the geometry and do the translation in  the shader.
  ---
  stateDiagram-v2
      state "x1,y1 --> x1+N,y1+N" as update
      state "Vertex Shader" as vertex_shader
      state "uniform vec2 u_translation" as uniform
      state "vec2 position = a_position + u_translation;" as position
      [*] --> update
      update --> vertex_shader
      vertex_shader --> uniform
      uniform --> position
  ```


  # WebGL2 2D Rotation

  ```math
  |x_1,y_1|\\
  |tx_1,ty_1|\\
  |x_1*ty_1 + y_1*tx_1,y_1*ty_1-x_1*tx_1|
  ```