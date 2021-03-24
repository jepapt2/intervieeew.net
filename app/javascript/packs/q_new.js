import Vue from 'vue';
import TextCount from './components/TextCount.vue';

var initial_title = document.getElementById("initial_title").textContent;
var initial_content = []
for(let i = 0; i < 100; i++){
  if(document.getElementById("initial_content_" + i) === null){
    initial_content.push('');
  }else{
    initial_content.push(document.getElementById("initial_content_" + i).textContent);
  }
}

  const field_count = initial_content.map(x => {
    if(x){
      return true
    }else{
      return false
    }
  }).lastIndexOf(true)

  if(field_count >= 10){
    var initial_field = field_count + 1
  }else{
    var initial_field = 10
  }

new Vue({
  el: "#App",
  data: function(){
    return{
    fieldCount: initial_field,
    title: initial_title,
    content: initial_content
    }
  },
  props:['text','limit'],
  components: { 
    TextCount
   }
})