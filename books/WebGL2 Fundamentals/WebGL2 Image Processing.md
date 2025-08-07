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
flowchart
    coord[texture coordinates]
    a_text_Coord[in vec2 a_texCoord]
    out_v_text[out vec2 v_texCoord]
    in_v_text[in vec2 v_texCoord]
```