<template>
  <div id="zq">
    <Header />
  </div>
</template>

<script>
import Header from './components/Header.vue';

export default {
  name: 'ZQ',
  components: {
    Header,
  },
};
</script>

<style>
#zq {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  box-sizing: border-box;
}
</style>
