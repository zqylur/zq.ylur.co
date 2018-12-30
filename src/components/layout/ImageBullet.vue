<template>
  <div>
    <img
      v-if="logo"
      :src="require(`../../assets/logos/${logo}.svg`)"
    />
    <span>{{ text }}</span>
  </div>
</template>

<script>
export default {
  name: 'ImageBullet',
  props: { text: String(''), logo: String('') },
};
</script>

<style scoped lang="scss">
div {
  display: flex;
  align-items: center;
  & > * {
    padding: 5px;
    line-height: 1.5em;
    flex-basis: content;
  }
}
img {
  height: 36px;
  width: 36px;
}

span {
  font-size: 1.5em;
}
</style>
