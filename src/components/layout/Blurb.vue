<template>
  <p class="blurb">
    <slot />
  </p>
</template>

<script>
export default {
  name: 'Blurb',
};
</script>

<style scoped>
.blurb {
  font-size: 1.2em;
  line-height: 1.5em;
}
</style>
