<template>
  <div class="modal" v-if="modalstate" v-on:click="modal"><div class="modalcontent">
    <b>PS</b>Tool requires the <a href="https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/" target="_blank">Tampermonkey</a> add on, and the <a href="https://github.com/knifoon/WorkStuff/raw/master/EE_Test.user.js" target="_blank">eagleeye</a> script to work.<br>
    You must also be logged into Comp. <br>
    If you have any questions chime me <b>@ricaarre</b>
  </div></div>
  <div class= "heading"><input id="tbaInput" type="TBA" name="" value="" autofocus="autofocus" onfocus="this.select()" @keyup.enter="update"> <div class="logo"><strong>PS</strong>Tool</div>
  <div class="cred" v-on:click="modal"><i data-feather="help-circle">info</i></div>
</div>
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
      ],
      modalstate: false
    }
  },
  methods: {
    update: function (event){
      let value = event.target.value;
      this.packages.unshift({TBA:value});
      event.target.value = "";

    },
    modal: function (){
      this.modalstate = !this.modalstate;
    }
  }
}
</script>

<style>
* {
  box-sizing: border-box;
}
body {
  margin: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
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
.heading {
  background: #f6f8fa;
  width: 100%;
  padding: 20px;
}
.heading input {
  background: #fff;
  border: solid 1px rgba(0,0,0,0.2);
box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
border-radius: 8px;
height: 40px;
width: 300px;
font-size: 1.17em;
text-align: center;
align-items: center;
box-sizing: border-box;
}
.logo {
  position: absolute;
  left: 20px;
  top: 20px;
  font-size: 1.5em;
  margin-left: 1em;
}
.cred {
  position: absolute;
  top: 20px;
  right: 20px;
}
.modal {
  position: fixed;
  z-index: 1;
  height: 100%;
  width: 100%;
  background: rgba(0,0,0,0.5);
  text-align: center;
}
.modalcontent {
  border-radius: 8px;
  background: #fff;
  width: 800px;
  margin: 150px auto;
  padding: 20px;

}
</style>
