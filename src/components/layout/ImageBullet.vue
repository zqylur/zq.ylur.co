<template>
  <div>
    <img :src="require(`../../assets/${logo}.svg`)" /> <span>{{ text }}</span>
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
  height: 24px;
  width: 24px;
}

span {
  font-size: 1.5em;
}
</style>
