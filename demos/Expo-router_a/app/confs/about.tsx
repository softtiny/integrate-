import { Link, } from 'expo-router';
export default function AboutLayout(){
  return ( 
  	<div style={{"padding":"20px"}}>
  		<Link href="/"> <div>go home</div> </Link>
  		<h6> h6 font size </h6>	
  	</div>
  	
  )
}