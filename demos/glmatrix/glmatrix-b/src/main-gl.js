var canvas = document.querySelector("#canvas");
var gl = canvas.getContext("webgl2");

var vertexShaderSource = `#version 300 es
  
// an attribute is an input (in) to a vertex shader.
// It will receive data from a buffer
in vec4 a_position;
  
// all shaders have a main function
void main() {
  
  // gl_Position is a special variable a vertex shader
  // is responsible for setting
  gl_Position = a_position;
}
`;
  
var fragmentShaderSource = `#version 300 es
  
// fragment shaders don't have a default precision so we need
// to pick one. highp is a good default. It means "high precision"
//precision highp float;
  
// we need to declare an output for the fragment shader
//out vec4 outColor;

//precision mediump float;
precision highp float;

uniform vec4 u_color;
out vec4 outColor;
  
void main() {
  // Just set the output to a constant reddish-purple
  //outColor = vec4(1, 0, 0.5, 1);

  outColor = u_color;
}
`;


function createShader(gl, type, source) {
  var shader = gl.createShader(type);
  gl.shaderSource(shader, source);
  gl.compileShader(shader);
  var success = gl.getShaderParameter(shader, gl.COMPILE_STATUS);
  if (success) {
    return shader;
  }
  
  console.log(gl.getShaderInfoLog(shader));
  gl.deleteShader(shader);
}

var vertexShader = createShader(gl, gl.VERTEX_SHADER, vertexShaderSource);
var fragmentShader = createShader(gl, gl.FRAGMENT_SHADER, fragmentShaderSource);

function createProgram(gl, vertexShader, fragmentShader) {
  var program = gl.createProgram();
  gl.attachShader(program, vertexShader);
  gl.attachShader(program, fragmentShader);
  gl.linkProgram(program);
  var success = gl.getProgramParameter(program, gl.LINK_STATUS);
  if (success) {
    return program;
  }
  
  console.log(gl.getProgramInfoLog(program));
  gl.deleteProgram(program);
}
var program = createProgram(gl, vertexShader, fragmentShader);
var positionAttributeLocation = gl.getAttribLocation(program, "a_position");
var positionBuffer = gl.createBuffer();
var colorUniformLocation = gl.getUniformLocation(program, "u_color");
gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

// three 2d points
var positions = [
  0, 0,
  0, 0.5,
  0.7, 0,
    // again count = 6
    0.8, 0,
    0,0.6,
    0.8,0.6
];
gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(positions), gl.STATIC_DRAW);
var vao = gl.createVertexArray();
gl.bindVertexArray(vao);
gl.enableVertexAttribArray(positionAttributeLocation);
var size = 2;          // 2 components per iteration
var type = gl.FLOAT;   // the data is 32bit floats
var normalize = false; // don't normalize the data
var stride = 0;        // 0 = move forward size * sizeof(type) each iteration to get the next position
var offset = 0;        // start at the beginning of the buffer
gl.vertexAttribPointer(
    positionAttributeLocation, size, type, normalize, stride, offset)

gl.viewport(0, 0, gl.canvas.width, gl.canvas.height);
// Clear the canvas
gl.clearColor(0, 0, 0, 0);
gl.clear(gl.COLOR_BUFFER_BIT);
// Tell it to use our program (pair of shaders)
gl.useProgram(program);
// Bind the attribute/buffer set we want.
gl.bindVertexArray(vao);
var primitiveType = gl.TRIANGLES;
var offset = 0;
var count = 3;
gl.uniform4f(colorUniformLocation, Math.random(), Math.random(), Math.random(), 1);
gl.drawArrays(primitiveType, offset, count);
// setTimeout(function(){
//   gl.clear(gl.COLOR_BUFFER_BIT);
//   gl.drawArrays(primitiveType, offset, 6);
// },1500)

if(new URLSearchParams(location.search).get('main')=='2'){
  let step = 0;
  function going(){
    step+=1;
    if(step%4==0){
      gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([
        Math.random()*2-1 , Math.random()*2-1 ,
        Math.random()*2-1 , Math.random()*2-1 ,
        Math.random()*2-1 , Math.random()*2-1 ,
      ]), gl.STATIC_DRAW);
      gl.uniform4f(colorUniformLocation, Math.random(), Math.random(), Math.random(), 1);
      gl.drawArrays(primitiveType, offset, count);
    }
    if(step<200){
      requestAnimationFrame(going);
  
    }
  }
  requestAnimationFrame(going)
  

}else{
  let step = 0;
  function going(){
    step+=1;
    if(step%4==0){
      gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([
        Math.random()*2-1 , Math.random()*2-1 ,
        Math.random()*2-1 , Math.random()*2-1 ,
        Math.random()*2-1 , Math.random()*2-1 ,
      ]), gl.STATIC_DRAW);
      gl.uniform4f(colorUniformLocation, Math.random(), Math.random(), Math.random(), 1);
      gl.drawArrays(primitiveType, offset, count);
    }
    if(step<200){
      //requestAnimationFrame(going);
      going();
    }
  }
  //requestAnimationFrame(going)
  going()

}