<template>
  <div :class="`zq-DancingLogo ${size}`">
    <img
      v-if="logo"
      :src="require(`../../assets/logos/${logo}.svg`)"
      :style="{ transform: `translate3d(${xPos}px, ${yPos}px, 0)`, 'transition-duration': `${duration}s` }"
      :class="size"
    />
  </div>
</template>

<script>
export default {
  name: 'DancingLogo',
  props: {
    logo: String(),
    size: { default: 'small', type: String },
    maxX: Number(),
    maxY: Number(),
    immediate: Boolean,
  },
  data: function() {
    return {
      xPos: 0,
      yPos: 0,
      duration: 0,
    };
  },
  mounted: function() {
    if (this.immediate) {
      setTimeout(() => {
        this.setPosition();
      }, 0);

      return;
    }

    const duration = Math.random() * (5 - 1.5) + 1.5;
    this.duration = duration;
    this.xPos = 0;
    this.yPos = 0;
    setTimeout(() => {
      this.setPosition();
    }, duration * 1000 + 100);
  },
  methods: {
    setPosition: function() {
      const { xPos, yPos, duration } = this.getTransition();
      this.xPos = xPos;
      this.yPos = yPos;
      this.duration = duration;
      // Add an extra 100ms to the timeout to ensure animation completes
      setTimeout(() => {
        this.setPosition();
      }, duration * 1000 + 100);
    },
    getTransition: function() {
      const xDir = Math.round(Math.random()) || -1;
      const yDir = Math.round(Math.random()) || -1;
      let xPos = (Math.random() * (this.maxX - this.maxX * 0.25) + this.maxX * 0.25) * xDir;
      let yPos = (Math.random() * (this.maxY - this.maxY * 0.25) + this.maxY * 0.25) * yDir;

      if (Math.abs(this.xPos - xPos) < 100) {
        xPos = xPos * -1;
      }
      if (Math.abs(this.yPos - yPos) < 100) {
        yPos = yPos * -1;
      }
      return {
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
    transform: translate3d(-50%, -50%, 0);
    top: 50%;
    left: 50%;
    display: block;

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
