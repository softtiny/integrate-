## Application

### Kitchen Display Systems (KDS)

- [ ] set interval time refresh user token and log out status
- [ ] order timer clock
- [ ] ADS
- [ ] Pagination
- [ ] dishs display
- [x] pages login,store,device ui.
- [ ] page history, config
- [ ] Parse CSS and add vendor prefixes to rules by Can I Use 
- [ ] from enter to display
- [x] 401 log out
- [ ] weight dish show
- [ ] dish or pick code or table no search


```mermaid
    gitGraph TB:
        checkout main
        commit id: "login" tag: "login page"
        commit id: "username"
        commit id: "password"
        commit id: "kds display" tag: "section page"
        branch timeline
        commit id: "after one minite"
        checkout main
        commit id: "dish list"
        commit id: "clock update"
        checkout timeline
        commit id: "after 30 minite"
        checkout main
        commit id: "refresh token"
```

```mermaid
mindmap
  root((src/layout.tsx))
    HeadBar
        HeadBar.store
    ReactQueryProvider
        start
            autoStore
            autoDevice
    page.tsx
    store
        store.service
    device
        device.service
        editor
            base
            dish editor
    login
        login.service
```


```mermaid
    gitGraph
       commit
       commit
       branch develop
       commit
       commit
       commit
       checkout main
       commit
       commit
```

```mermaid
flowchart LR

A[Hard] -->|Text| B(Round)
B --> C{Decision}
C -->|One| D[Result 1]
C -->|Two| E[Result 2]
```


```mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop HealthCheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
```