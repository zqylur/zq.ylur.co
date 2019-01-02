<template>
  <span :class="`zq-DancingLogo ${size}`">
    <img
      v-if="logo"
      :src="require(`../../assets/logos/${logo}.svg`)"
      :style="{ transform: `translate3d(${xPos}px, ${yPos}px, 0)`, 'transition-duration': `${duration}s` }"
      :class="size"
    />
  </span>
</template>

<script>
export default {
  name: 'DancingLogo',
  props: { logo: String(), size: { default: 'small', type: String }, maxX: Number(), maxY: Number() },
  data: function() {
    return {
      ...this.getTransition(),
      xPos: 0,
      yPos: 0,
    };
  },
  mounted: function() {
    this.setPosition(1, this.maxY / 2);
  },
  methods: {
    setPosition: function(x, y) {
      const { xDir, xPos, yPos, duration } = this.getTransition();
      this.xDir = xDir;
      this.xPos = x || xPos;
      this.yPos = y || yPos;
      this.duration = duration;
      // Add an extra 100ms to the timeout to ensure animation completes
      setTimeout(() => this.setPosition(), duration * 1000 + 100);
    },
    getTransition: function() {
      const xDir = Math.round(Math.random()) || -1;
      let xPos = (Math.random() * (this.maxX - this.maxX * 0.25) + this.maxX * 0.25) * xDir;
      let yPos = Math.random() * this.maxY;
      if (Math.abs(this.xPos - xPos) < 100) {
        xPos = xPos * -1;
      }

      if (Math.abs(this.yPos - yPos) < 100) {
        yPos = yPos * -1 + this.maxY;
      }
      return {
        xDir,
        xPos,
        yPos,
        duration: Math.random() * (5 - 1.5) + 1.5,
      };
    },
  },
};
</script>

<style scoped lang="scss">
#zq {
  .zq-DancingLogo {
    position: absolute;

    &.xlarge > img {
      height: 96px;
      width: 96px;
      opacity: 0.5;
    }

    &.large > img {
      height: 64px;
      width: 64px;
      opacity: 0.65;
    }

    &.medium > img {
      height: 42px;
      width: 42px;
      opacity: 0.85;
    }

    &.small > img {
      height: 36px;
      width: 36px;
      opacity: 0.95;
    }

    &.xsmall > img {
      height: 24px;
      width: 24px;
    }
  }
}
</style>
