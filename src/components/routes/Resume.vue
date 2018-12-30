<template>
  <div class="resume">
    <ul>
      <li>
        <ImageBullet
          text="Javascript"
          logo="JS"
        />
      </li>
      <li>
        <ImageBullet
          text="Typescript"
          logo="TS"
        />
      </li>
      <ImageBullet
        text="webpack"
        logo="webpack"
      />
    </ul>
  </div>
</template>

<script>
import ImageBullet from '../layout/ImageBullet.vue';

export default {
  name: 'Resume',
  components: {
    ImageBullet,
  },
};
</script>

<style scoped lang="scss">
ul {
  list-style-type: none;
}
</style>
