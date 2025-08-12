export const main = function(){
    const vertexShaderSource = `#version 300 es
in vec2 a_position;
in vec2 a_texCoord;

uniform vec2 u_resolution;
out vec2 v_texCoord;
void main() {
    vec2 zeroToOne = a_position / u_resolution;
    vec2 zeroToTwo = zeroToOne * 2.0;
    vec2 clipSpace = zeroToTwo - 1.0;
    gl_Position = vec4(clipSpace* vec2(1,-1),0,1);
    v_texCoord = a_texCoord;
}
`
    const framentShaderSource=`#version 300 es
precision highp float;
uniform sampler2D u_image;
in vec2 v_texCoord;
out vec2 outColor;
void main() {
    outColor = texture(u_image, v_texCoord);
}
`

    function createShader(gl,type,source){
        const shader = gl.createShader(type)
        gl.shaderSource(shader,source)
        gl.compileShader(shader)
        const success = gl.getShaderParameter(shader,gl.COMPILE_STATUS)
        if (success){
            return shader
        }
        console.log(gl.getShaderInfoLog(shader))
        gl.deleteShader(shader)
    }
    function createProgram(gl,vertexShader,fragmentShader){
        const program = gl.createProgram()
        gl.attachShader(program,shader)
        gl.attachShader(program,shader)
        gl.linkProgram(program)
        const success = gl.getProgramParameter(program,gl.LINK_STATUS)
        if (success) {
            return program
        }
        console.log(gl.getProgramInfoLog())
        gl.deleteProgram(program)
    }
    function render(){
        const canvas = document.querySelector("#canvas")
        const gl = canvas.getContext("webgl2")
        const vertexShader = createShader(gl,gl.VERTEX_SHADER,vertexShaderSource);
        const fragmentShader = createShader(gl,gl.FRAGMENT_SHADER,fragmentShaderSource);
        const program = createProgram(gl,vertexShader, fragmentShader);
        const positionAttributeLocatoin = gl.getAttribLocation(program,'a_position')
        const texCoordAttributeLocation = gl.getAttribLocation(program,'a_texCoord')
        const resolutionLocation = gl.getUniformLocation(program,"u_resolution")
        const imageLocation = gl.getUniformLocation(program,"u_image")
        const vao = gl.createVertexArray();
        gl.bindVertexArray(vao)
        const positionBuffer=  gl.createBuffer();
        gl.enableVertexAttribArray(positionAttributeLocatoin)
        gl.bindBuffer(gl.ARRAY_BUFFER,positionBuffer)
        let size = 2;
        let type = gl.FLOAT;
        let normalize = false;
        let stride = 0;
        let offset = 0;
        gl.vertexAttribPointer(positionAttributeLocatoin,size,type,normalize,stride,offset);
        const texCoordBuffer = gl.createBuffer();
        gl.bindBuffer(gl.ARRAY_BUFFER,texCoordBuffer);
        gl.bufferData(gl.ARRAY_BUFFER,new Float32Array([
            0,0,1.0,
            1,0,0.0,
            0.0,1.0,
            0,0,1.0,
            1.0,0.0,
            1,0,1,0
        ]),gl.STATIC_DRAW);
        gl.enableVertexAttribArray(texCoordAttributeLocation)
        gl.vertexAttribPointer(texCoordAttributeLocation,size,type,normalize,stride,offset);
    }   
    function main() {
        const img = new Image();
        img.src = "https://webgl2.kunkka.proxy/webgl/resources/leaves.jpg";  // MUST BE SAME DOMAIN!!!
        img.onload = function(){ 
            render();
        }
    }
    main();
}