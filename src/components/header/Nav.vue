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
  position: relative;
}

.router .route a {
  display: inline-block;
  padding: 0.5rem;
  color: #e4fde1;
  text-decoration: none;
}

.router .route a::before {
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background-color: #f45b69;
  left: 0;
  top: 3px;
}

.router .route a::after {
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background-color: #f45b69;
  left: 0;
  bottom: 3px;
}

.router .route:hover a {
  background-color: #e4fde1;
  color: #f45b69;
}
</style>
