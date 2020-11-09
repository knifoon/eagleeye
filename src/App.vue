<template>
  <input id="tbaInput" type="TBA" name="" value="" autofocus="autofocus" onfocus="this.select()" @keyup.enter="update">
  <ul id="list">
    <li v-for="Package in packages" v-bind:key="Package.TBA">
      <h3>{{Package.TBA}}</h3>
      <div class="pkgdetails">test</div>
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
  margin-top: 20px;
}
#tbaInput {
}
#list {
  text-align: left;
  list-style: none;
}
#list h3 {
  margin-bottom: 2px;
}
</style>
