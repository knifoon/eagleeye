<template>
  <input id="tbaInput" type="TBA" name="" value="" @keyup.enter="update">
  <ul>
    <li v-for="Package in packages" v-bind:key="Package.TBA">
      {{Package.TBA}}
    </li>
  </ul>
</template>

<script>
// import Package from './components/Package.vue'

export default {
  name: 'App',
  components: {
    // Package
  },
  data: function(){
    return {
      packages: [
      ]
    }
  },
  methods: {
    update: function (event){
      let value = event.target.value;
      this.packages.unshift({TBA:value});
      event.target.value = "";

    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
