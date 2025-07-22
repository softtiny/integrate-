# How WebGL2 Works

- **two main tasks of the GPU:**
    - **Vertex Processing**
    - **Pixel Rendering (Fragment Processing)**


## Vertex Processing

```mermaid
stateDiagram-v2
    [*] --> Buffers
    state Buffers {
       positions --> vertex_data
       colors --> vertex_data
        texture_coordinates --> vertex_data
    }

    state Vertex_Shader {
      vertex_a
      vertex_b
      gl_Position 
    }
    state coordinates {
         vertex_coordinates 
    }
    vertex_data --> Vertex_Shader :attributes
    Vertex_Shader --> coordinates :gl_Position 
    state Fragment_Fhader {
         subsequent_interpolation
         clip_space 


    }
    Vertex_Shader --> Fragment_Fhader :varying variables

 

```
