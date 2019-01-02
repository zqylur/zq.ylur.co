<template>
  <div class="resume">
    <DancingLogo
      v-for="skill in skills"
      :key="skill.text"
      :logo="skill.logo"
      :size="getExpertiseSizing(skill.expertise)"
      :max-x="(clientWidth / 2) * 0.8"
      :max-y="clientHeight * 0.8"
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
  data: () => {
    return {
      clientHeight: document.documentElement.clientHeight,
      clientWidth: document.documentElement.clientWidth,
      skills: [
        { text: 'Javascript', logo: 'js', expertise: 'everyDay' },
        { text: 'Typescript', logo: 'ts', expertise: 'everyDay' },
        { text: 'webpack', logo: 'webpack', expertise: 'prettyFamiliar' },
        { text: 'CSS', logo: 'css', expertise: 'everyDay' },
        { text: 'HTML', logo: 'html', expertise: 'everyDay' },
        { text: 'C#', logo: 'csharp', expertise: 'beenAWhile' },
        { text: 'R', logo: 'r', expertise: 'beenAWhile' },
        { text: 'Node.js', logo: 'nodejs', expertise: 'some' },
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
    getExpertiseSizing: function(expertise) {
      return expertiseToSize[expertise];
    },
  },
};
</script>

<style scoped lang="scss">
.resume {
  position: relative;
  height: 80vh;
  width: 100vw;
}
</style>
