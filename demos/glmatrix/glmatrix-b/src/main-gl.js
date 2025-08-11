import {main as fundamentals_a} from './fundamentals/demoa'
import {main as fundamentals_b} from './fundamentals/demob'
if(new URLSearchParams(location.search).get('main')=='2'){

  fundamentals_a()

}else{
  fundamentals_b()

}