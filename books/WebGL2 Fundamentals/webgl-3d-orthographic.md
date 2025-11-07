#  front facing and back facing

- Counter Clockwise  --- Front Facing Triangle
- Clockwise --- Back Facing Triangle

# Why in vec4 a_position in the shader?

- gl_Position must be a vec4.
- All 3D transformation matrices (translation, rotation, scale, orthographic, perspective) are 4×4 and expect a 4-component vector.
- Multiplying a mat4 * vec4 is the standard way to transform points correctly (the w component enables translation).

# Why gl.vertexAttribPointer(..., size = 3, ...)?

- Your vertex data only contains x, y, z (3 floats per vertex).
- Storing a fourth 1.0 for every vertex would waste ~33% memory and bandwidth (millions of vertices in real apps = big waste).

# Summary
- Shader needs vec4 → for correct 4×4 matrix math and translation.
- Buffer supplies only 3 floats → saves memory.
- WebGL fills w = 1 automatically → perfect for 3D points.