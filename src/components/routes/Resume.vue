<template>
  <div class="resume">
    <ul>
      <li
        v-for="skill in skills"
        :key="skill.text"
      >
        <ImageBullet
          :text="skill.text"
          :logo="skill.logo"
        />
      </li>
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
  data: () => {
    return {
      skills: [
        { text: 'Javascript', logo: 'js' },
        { text: 'Typescript', logo: 'ts' },
        { text: 'webpack', logo: 'webpack' },
        { text: 'CSS', logo: 'css' },
        { text: 'HTML', logo: 'html' },
        { text: 'C#', logo: 'csharp' },
        { text: 'R', logo: 'r' },
        { text: 'Node.js', logo: 'nodejs' },
        { text: 'React', logo: 'react' },
        { text: 'AngularJS', logo: 'angular' },
        { text: 'Flow', logo: 'flow' },
        { text: 'gulp', logo: 'gulp' },
        { text: 'Grunt', logo: 'grunt' },
        { text: 'Sass', logo: 'sass' },
        { text: 'jQuery', logo: 'jquery' },
        { text: 'git', logo: 'git' },
        { text: 'Vue.js', logo: 'vue' },
        { text: 'babel', logo: 'babel' },
        { text: 'Jest', logo: 'jest' },
        { text: 'Karma', logo: 'karma' },
        { text: 'npm', logo: 'npm' },
        { text: 'Enzyme', logo: 'enzyme' },
        { text: 'Redux', logo: 'redux' },
        { text: 'Redux-Saga', logo: 'reduxsaga' },
      ],
    };
  },
};
</script>

<style scoped lang="scss">
ul {
  list-style-type: none;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: baseline;

  & > li {
    flex-grow: 1;
    flex-shrink: 0;
    flex-basis: 20%;

    &:not(:last-child) {
      margin-bottom: 3rem;
    }
  }
}
</style>
