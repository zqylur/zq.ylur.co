<template>
  <div class="home">
    <h2>Hullo there!</h2>
    <Blurb>
      I'm Zach, and I'm a front-end engineer working on large, interactive web applications. Right now, I'm in Seattle
      and focused on developer tools for AWS.
    </Blurb>
  </div>
</template>

<script>
import Blurb from '../layout/Blurb.vue';

export default {
  name: 'Home',
  components: {
    Blurb,
  },
};
</script>

<style>
.home {
  width: 50%;
  margin: 0 auto;
  text-align: justify;
}
</style>
