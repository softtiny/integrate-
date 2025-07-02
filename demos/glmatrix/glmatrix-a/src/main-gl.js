import { mat4 } from 'gl-matrix';
console.log("gl-main")


const canvas = document.createElement('canvas');
canvas.width = 400;
canvas.height = 400;
document.body.appendChild(canvas);
const gl = canvas.getContext('webgl');


const vertexShaderSource = `
  attribute vec3 aPosition;
  uniform mat4 uModelMatrix;
  uniform mat4 uViewMatrix;
  uniform mat4 uProjectionMatrix;
  void main() {
    gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix * vec4(aPosition, 1.0);
  }
`;
const fragmentShaderSource = `
  precision mediump float;
  void main() {
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
  }
`;

function createShader(gl, type, source) {
  const shader = gl.createShader(type);
  gl.shaderSource(shader, source);
  gl.compileShader(shader);
  return shader;
}


const program = gl.createProgram();
gl.attachShader(program, createShader(gl, gl.VERTEX_SHADER, vertexShaderSource));
gl.attachShader(program, createShader(gl, gl.FRAGMENT_SHADER, fragmentShaderSource));
gl.linkProgram(program);
gl.useProgram(program);


const vertices = new Float32Array([
  0.0,  0.5,  0.0,
 -0.5, -0.5,  0.0,
  0.5, -0.5,  0.0
]);
const vertexBuffer = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, vertexBuffer);
gl.bufferData(gl.ARRAY_BUFFER, vertices, gl.STATIC_DRAW);

const positionLocation = gl.getAttribLocation(program, 'aPosition');
gl.enableVertexAttribArray(positionLocation);
gl.vertexAttribPointer(positionLocation, 3, gl.FLOAT, false, 0, 0);


const modelMatrix = mat4.create();
const viewMatrix = mat4.create();
const projectionMatrix = mat4.create();
mat4.lookAt(viewMatrix, [0, 0, 5], [0, 0, 0], [0, 1, 0]);
mat4.perspective(projectionMatrix, Math.PI / 4, canvas.width / canvas.height, 0.1, 100.0);

const modelLocation = gl.getUniformLocation(program, 'uModelMatrix');
const viewLocation = gl.getUniformLocation(program, 'uViewMatrix');
const projLocation = gl.getUniformLocation(program, 'uProjectionMatrix');

function animate() {
  requestAnimationFrame(animate);
  mat4.rotateY(modelMatrix, modelMatrix, 0.01); // 每帧旋转
  gl.uniformMatrix4fv(modelLocation, false, modelMatrix);
  gl.uniformMatrix4fv(viewLocation, false, viewMatrix);
  gl.uniformMatrix4fv(projLocation, false, projectionMatrix);
  gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
  gl.drawArrays(gl.TRIANGLES, 0, 3);
}
animate();