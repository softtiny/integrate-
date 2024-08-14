```mermaid
    stateDiagram-v2
        sub: section sub
        store: zustand store
        [*] --> Timer

        Timer --> sub
        sub --> store
        store --> [*]

```