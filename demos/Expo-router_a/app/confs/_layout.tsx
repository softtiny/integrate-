import { Stack, Link, } from 'expo-router';
export default function ConfLayout() { 
	return (
		<div className="confspage">
			<h4> h4 font size </h4>	
			<div> current route:/confs/</div>
			<div> current route:/confs/about</div>
	  		<Link href="/"> <div>go home==confs/_layout.tsx</div> </Link>
	  		
	  		<Stack>
	  			<Stack.Screen name="about"  options={{ headerShown: false }} />
	  		</Stack>
	  	</div>
	)
}