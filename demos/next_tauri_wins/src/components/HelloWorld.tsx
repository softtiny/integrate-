// components/HelloWorld.jsx
import { useEffect } from "react";

const HelloWorld = () => {
    useEffect(() => {
        window.alert(localStorage.getItem('complete'));
        localStorage.setItem('complete', Date.now().toString());
    }, []);
    return <div>Hello World!</div>;
};

export default HelloWorld;