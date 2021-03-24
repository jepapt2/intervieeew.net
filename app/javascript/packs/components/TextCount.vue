<template>
    <p class="text-right mb-0" v-bind:style="{color: limitColor}">
      <small>{{ text.length }}/{{ limit }}</small>
    </p>
</template>

<script>
export default {
  name: 'textCount',
  props: {
    text: {
      type: String
    },
    limit: {
      type: Number
    }
  },
  computed: {
    limitColor: function(){
      var c = 'gray';
      if(this.limit < this.text.length){
        var c = 'red';
      }
      return c;
    }
  }
}
</script>