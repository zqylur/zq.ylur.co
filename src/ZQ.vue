<template>
  <div id="zq">
    <Header />
    <transition
      name="slide-fade"
      mode="out-in"
    >
      <router-view />
    </transition>
  </div>
</template>

<script>
import Header from './components/header/Header.vue';

export default {
  name: 'ZQ',
  components: {
    Header,
  },
};
</script>

<style lang="scss">
body {
  margin: 0;
  background-color: $primaryColor;
}

#zq {
  font-family: 'Arcon', 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: $textColor;
  box-sizing: border-box;
}

.slide-fade-enter-active {
  transition: all 0.3s ease;
}
.slide-fade-leave-active {
  transition: all 0.8s cubic-bezier(1, 0.5, 0.8, 1);
}
.slide-fade-enter, .slide-fade-leave-to
/* .slide-fade-leave-active below version 2.1.8 */ {
  transform: translateY(100%);
  opacity: 0;
}

@font-face {
  font-family: 'Arcon';
  src: url('./assets/Arcon-Regular.otf');
}
</style>
