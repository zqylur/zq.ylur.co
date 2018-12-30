<template>
  <nav>
    <ol class="router">
      <li class="route">
        <router-link to="/">
          Who
        </router-link>
      </li>
      <li class="route">
        <router-link to="/resume">
          What
        </router-link>
      </li>
      <li class="route">
        <router-link to="/about">
          Why
        </router-link>
      </li>
      <li class="route">
        <router-link to="/contact">
          Contact
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

<style scoped lang="scss">
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
  position: relative;
}

.router .route a {
  display: inline-block;
  padding: 0.5rem;
  color: $textColor;
  text-decoration: none;
  background-image: linear-gradient(to bottom, $primaryColor, $primaryColor 50%, $textColor, $textColor 50%);
  background-position: 100% 0;
  background-size: 100% 200%;
  transition: all 0.25s ease-in;
}

.router .route a::before {
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background-color: $primaryColor;
  left: 0;
  top: 3px;
}

.router .route a::after {
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background-color: $primaryColor;
  left: 0;
  bottom: 3px;
}

.router .route:hover a {
  background-position: 0 -100%;
  background-color: $textColor;
  color: $primaryColor;
}
</style>
