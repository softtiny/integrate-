import {main as fundamentals_a} from './fundamentals/demoa'
import {main as fundamentals_b} from './fundamentals/demob'
import {main as img_process_a} from './ImageProcess/demoA'
if(new URLSearchParams(location.search).get('main')=='2'){
  fundamentals_a()
}else if(new URLSearchParams(location.search).get('main')=='img_process_a'){

  img_process_a()

}else{
  fundamentals_b()

}