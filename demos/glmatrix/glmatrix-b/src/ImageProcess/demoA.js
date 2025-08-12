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
    const fragmentShaderSource=`#version 300 es
precision highp float;
uniform sampler2D u_image;
in vec2 v_texCoord;
out vec4 outColor;
void main() {
    outColor = texture(u_image, v_texCoord);
}
`
    function setRectangle(gl,x1,y1,width,height){
        const x2= x1+width;
        const y2 = y1+height;
        gl.bufferData(gl.ARRAY_BUFFER,new Float32Array([
            x1,y1,
            x2,y1,
            x1,y2,
            x1,y2,
            x2,y1,
            x2,y2,
        ]),gl.STATIC_DRAW)
    }
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
        gl.attachShader(program,vertexShader)
        gl.attachShader(program,fragmentShader)
        gl.linkProgram(program)
        const success = gl.getProgramParameter(program,gl.LINK_STATUS)
        if (success) {
            return program
        }
        console.log(gl.getProgramInfoLog())
        gl.deleteProgram(program)
    }
    function render(img){
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
            0.0,0.0,
            1.0,0.0,
            0.0,1.0,
            0.0,1.0,
            1.0,0.0,
            1.0,1.0
        ]),gl.STATIC_DRAW);
        gl.enableVertexAttribArray(texCoordAttributeLocation)
        gl.vertexAttribPointer(texCoordAttributeLocation,size,type,normalize,stride,offset);
        const texture = gl.createTexture();
        gl.activeTexture(gl.TEXTURE0+0)
        gl.bindTexture(gl.TEXTURE_2D,texture);
        gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
        gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
        gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
        gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
        const mipLevel = 0;
        const internalFormat = gl.RGBA;
        const srcFormat = gl.RGBA;
        const srcType = gl.UNSIGNED_BYTE;
        gl.texImage2D(gl.TEXTURE_2D,
            mipLevel,
            internalFormat,
            srcFormat,
            srcType,
            img,
        )

        gl.canvas.width = canvas.offsetWidth
        gl.canvas.height = canvas.offsetHeight
        gl.viewport(0,0,gl.canvas.width,gl.canvas.height)
        gl.clearColor(0,0,0,0);
        gl.clear(gl.COLOR_BUFFER_BIT|gl.DEPTH_BUFFER_BIT);
        gl.useProgram(program)
        gl.bindVertexArray(vao)
        gl.uniform2f(resolutionLocation,gl.canvas.width,gl.canvas.height)
        gl.uniform1i(imageLocation,0)
        gl.bindBuffer(gl.ARRAY_BUFFER,positionBuffer)
        setRectangle(gl,0,0,img.width,img.height)
        const primitiveType = gl.TRIANGLES
        offset = 0;
        const count = 6;
        gl.drawArrays(primitiveType,offset,count)
    }   
    function main() {
        const img = new Image();
        img.src = "/leaves.jpg";  // MUST BE SAME DOMAIN!!!
        img.onload = function(){ 
            render(img);
        }
    }
    main();
}