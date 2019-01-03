<template>
  <div class="zq-Resume">
    <img
      v-if="!initialized"
      :class="`zq-Resume-jsOverlay ${fadeOverlay ? 'fade' : ''}`"
      :src="require(`../../assets/logos/${baseSkill.logo}.svg`)"
    />
    <DancingLogo
      v-if="initialized"
      :key="`${baseSkill.text}-${clientHeight}-${clientWidth}}`"
      :logo="baseSkill.logo"
      :size="getExpertiseSizing(baseSkill.expertise)"
      :max-x="clientWidth / 2"
      :max-y="(clientHeight * 0.8) / 2"
      :immediate="true"
    />
    <DancingLogo
      v-for="skill in skills"
      :key="`${skill.text}-${clientHeight}-${clientWidth}}`"
      :logo="skill.logo"
      :size="getExpertiseSizing(skill.expertise)"
      :max-x="clientWidth / 2"
      :max-y="(clientHeight * 0.8) / 2"
    />
  </div>
</template>

<script>
import DancingLogo from '../layout/DancingLogo.vue';

const expertiseToSize = {
  everyDay: 'xlarge',
  prettyFamiliar: 'large',
  some: 'medium',
  beenAWhile: 'small',
  triedItOnce: 'xsmall',
};

export default {
  name: 'Resume',
  components: {
    DancingLogo,
  },
  created: function() {
    window.addEventListener('resize', this.handleResize);
    this.init();
  },
  beforeDestroy: function() {
    window.removeEventListener('resize', this.handleResize);
  },
  data: () => {
    return {
      initialized: false,
      fadeOverlay: false,
      clientHeight: document.documentElement.clientHeight,
      clientWidth: document.documentElement.clientWidth,
      baseSkill: { text: 'Javascript', logo: 'js', expertise: 'everyDay' },
      skills: [
        { text: 'Typescript', logo: 'ts', expertise: 'everyDay' },
        { text: 'webpack', logo: 'webpack', expertise: 'prettyFamiliar' },
        { text: 'CSS', logo: 'css', expertise: 'everyDay' },
        { text: 'HTML', logo: 'html', expertise: 'everyDay' },
        { text: 'C#', logo: 'csharp', expertise: 'beenAWhile' },
        { text: 'R', logo: 'r', expertise: 'beenAWhile' },
        { text: 'Node.js', logo: 'nodejs', expertise: 'prettyFamiliar' },
        { text: 'React', logo: 'react', expertise: 'everyDay' },
        { text: 'AngularJS', logo: 'angular', expertise: 'prettyFamiliar' },
        { text: 'Flow', logo: 'flow', expertise: 'some' },
        { text: 'gulp', logo: 'gulp', expertise: 'beenAWhile' },
        { text: 'Grunt', logo: 'grunt', expertise: 'beenAWhile' },
        { text: 'Sass', logo: 'sass', expertise: 'prettyFamiliar' },
        { text: 'jQuery', logo: 'jquery', expertise: 'beenAWhile' },
        { text: 'git', logo: 'git', expertise: 'everyDay' },
        { text: 'Vue.js', logo: 'vue', expertise: 'triedItOnce' },
        { text: 'babel', logo: 'babel', expertise: 'prettyFamiliar' },
        { text: 'Jest', logo: 'jest', expertise: 'everyDay' },
        { text: 'Karma', logo: 'karma', expertise: 'beenAWhile' },
        { text: 'npm', logo: 'npm', expertise: 'prettyFamiliar' },
        { text: 'Enzyme', logo: 'enzyme', expertise: 'everyDay' },
        { text: 'Redux', logo: 'redux', expertise: 'everyDay' },
        { text: 'Redux-Saga', logo: 'reduxsaga', expertise: 'everyDay' },
      ],
    };
  },
  methods: {
    init: function() {
      setTimeout(() => {
        this.fadeOverlay = true;
        setTimeout(() => {
          this.initialized = true;
        }, 1250);
      }, 5000);
    },
    getExpertiseSizing: function(expertise) {
      return expertiseToSize[expertise];
    },
    handleResize: function() {
      this.clientHeight = document.documentElement.clientHeight;
      this.clientWidth = document.documentElement.clientWidth;
      this.fadeOverlay = false;
      this.initialized = false;
      this.init();
    },
  },
};
</script>

<style scoped lang="scss">
.zq-Resume {
  position: relative;
  height: 80vh;
  width: 100vw;

  .zq-Resume-jsOverlay {
    z-index: 1;
    position: absolute;
    height: 20rem;
    width: 20rem;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    transition: all 1s ease-out;

    &.fade {
      opacity: 0.5;
      height: 96px;
      width: 96px;
    }
  }
}
</style>
