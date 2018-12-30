<template>
  <nav>
    <ol class="router">
      <li class="route">
        <router-link to="/">
          <a>Home</a>
        </router-link>
      </li>
      <li class="route">
        <router-link to="/about">
          <a>About</a>
        </router-link>
      </li>
      <li class="route">
        <router-link to="/resume">
          <a>Resume</a>
        </router-link>
      </li>
      <li class="route">
        <router-link to="/contact">
          <a>Contact</a>
        </router-link>
      </li>
    </ol>
  </nav>
</template>

<script>
export default {
  name: 'Nav',
};
</script>

<style scoped>
nav {
  flex-grow: 4;
}

nav .router {
  list-style: none;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: flex-end;
  flex-wrap: wrap;
}

.router .route {
  margin-left: 2rem;
  margin-right: 2rem;
}
</style>
