'use client'
// components/HelloWorld.jsx
import { useEffect,useState } from "react";


const HelloWorld = () => {
    const [value, setValue] = useState('');
    const [href, setHref] = useState('');

    useEffect(() => {
            setTimeout(()=>{

                setValue(localStorage.getItem('complete')||"........");
                localStorage.setItem('complete', Date.now().toString());
                    },10000)
                setHref(window.location.href);
    }, []);
    return <div>
        <div>{href}--Hello World!{value}</div>
    </div>;
};

export default HelloWorld;
