# WebGL2 Image Processing

### Key Concepts of WebGL2 Image Processing

```mermaid
---
title: Textures and Coordinates
---
flowchart 
    textures 
    Coordinates
    part[parts of the texture]
    textures --> vertices 
    Coordinates --> vertices
    vertices -- mapped to  --> part
```

```mermaid
---
title: Vertex and Fragment Shaders
---
flowchart TB
    
    subgraph fragment
        in_v_text[in vec2 v_texCoord]
        out[out vec4 outColor]
        uniform[uniform sampler2D u_image]
        
        subgraph void_main
            texture_fn@{ shape: hex, label: "textture(u_image, v_texCoord)" }
            output@{ shape: lean-l, label: "outColor=texture()" }
        end
        uniform --> texture_fn
        in_v_text --> texture_fn
        texture_fn --> output
        out --> output
    end
    
    subgraph vertex 
        a_text_pos[in vec2 a_position]
        a_text_Coord[in vec2 a_texCoord]
        out_v_text[out vec2 v_texCoord]
        
        subgraph main
            set[v_texCoord=a_texCoord]
        end
        a_text_Coord --> set
        out_v_text --> set
    end
    colors@{ shape: dbl-circ, label: "pixel colors" }
    out_v_text -- varying  --> in_v_text
    output --> colors
    bufA@{ label: "buf_a = gl.createBuffer()" }
    bufB@{ label: "buf_b = gl.createBuffer()" }
    subgraph coordinates
        coord[texture coordinates]
        subgraph ARRAY_BUFFER
            bindA@{ label: "gl.bindBuffer(buf_a)" }
            bindB@{ label: "gl.bindBuffer(buf_b)" }
        end
        data_a@{ label: "data_a = new Float32Array([])" }
        data_b@{ label: "data_b = new Float32Array([])" }
        ARRAY_BUFFER <-- bufferData --> data_a
        ARRAY_BUFFER <-- bufferData --> data_b
    end
    bufA --> bindA
    bufB --> bindB
    subgraph vertexAttribPointer_A
        apos@{ label: "gl.getAttribLocation(program,'a_position')" }
        aA@{ label: "numComponents" }
        aB@{ label: "type = gl.FLOAT" }
        aC@{ label: "normalize = false" }
        aD@{ label: "offset" }
        aE@{ label: "stride" }
    end
    subgraph vertexAttribPointer_B
        btex@{ label: "gl.getAttribLocation(program, 'a_texCoord')" }
        bA@{ label: "numComponents" }
        bB@{ label: "type = gl.FLOAT" }
        bC@{ label: "normalize = false" }
        bD@{ label: "offset" }
        bE@{ label: "stride" }
    end
    ARRAY_BUFFER --> bindBuffer_A --> vertexAttribPointer_A --> a_text_pos
    ARRAY_BUFFER --> bindBuffer_B --> vertexAttribPointer_B --> a_text_Coord
    img@{ label: "&lt;img  src='' onload='upload'/&gt;"}
    img -- texImage2D --> fragment
    subgraph texture 
        dt@{ label: "texture data: new Uint8Array([255, 0, 0, 255, 0, 255, 0, 255])" }
    end
    dt --> uniform
```


# Texture Units 

Texture units are hardware slots 

```js
var textureUnitIndex = 6;
var u_imageLoc = gl.getUniformLocation(program, "u_image");
gl.uniform1i(u_imageLoc, textureUnitIndex); // Link u_image to texture unit 6
gl.activeTexture(gl.TEXTURE0 + textureUnitIndex); // Activate unit 6
gl.bindTexture(gl.TEXTURE_2D, someTexture); // Bind texture to unit 6
```