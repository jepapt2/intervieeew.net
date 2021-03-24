import Vue from 'vue';
import TextCount from './components/TextCount.vue';
import '../stylecheets/a_new'

var initial_title = document.getElementById("initial_title").textContent;
var initial_answerer = document.getElementById("initial_answerer").textContent;
var initial_overview = document.getElementById("initial_overview").textContent;
var initial_content = []
for(let i = 0; i < 100; i++){
  if(document.getElementById("initial_content_" + i) === null){
    initial_content.push('');
  }else{
    initial_content.push(document.getElementById("initial_content_" + i).textContent);
  }
}

var initial_head = []
var initial_head_show = []
for(let i = 0; i < 100; i++){
  initial_head.push(document.getElementById("initial_head_" + i).textContent);
  if(!document.getElementById("initial_head_" + i).textContent){
    initial_head_show.push(false);
  }else{
    initial_head_show.push(true);
  }
}

new Vue({
  el: "#App",
  data: function(){
    return{
    title: initial_title,
    answerer: initial_answerer,
    overview: initial_overview,
    head: initial_head,
    content: initial_content,
    free_image: false,
    up_image: false,
    head_show: initial_head_show,
    file: null
    }
  },
  methods:{
    changehead(i){
        this.$set(this.head_show, i, !this.head_show[i]); 
    },
    reset(){
      this.$refs.file.value = null;
    }
},
  props:['text','limit'],
  components: { 
    TextCount
   }
})

