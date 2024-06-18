'use client'
// components/HelloWorld.jsx
import { useEffect,useState } from "react";


const HelloWorld = () => {
    const [value, setValue] = useState('');

    useEffect(() => {
            setTimeout(()=>{

                setValue(localStorage.getItem('complete'));
                localStorage.setItem('complete', Date.now().toString());
                    },10000)
    }, []);
    return <div>Hello World!{value}</div>;
};

export default HelloWorld;
