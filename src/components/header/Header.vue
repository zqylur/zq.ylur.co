<template>
  <header>
    <h1>Zach Weiler</h1>
    <Nav />
  </header>
</template>

<script>
import Nav from './Nav.vue';

export default {
  name: 'Header',
  components: {
    Nav,
  },
};
</script>

<style scoped>
header {
  margin-top: 2rem;
  display: flex;
  align-items: center;
}

header h1 {
  flex-grow: 1;
}
</style>
