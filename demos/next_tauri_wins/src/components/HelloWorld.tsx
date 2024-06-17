// components/HelloWorld.jsx
import { useEffect } from "react";
import { useClient } from 'next/client';


const HelloWorld = () => {
    useClient();
    useEffect(() => {
        window.alert(localStorage.getItem('complete'));
        localStorage.setItem('complete', Date.now().toString());
    }, []);
    return <div>Hello World!</div>;
};

export default HelloWorld;