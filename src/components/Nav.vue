<template>
  <nav>
    <ol class="router">
      <li class="route">
        <a>Home</a>
      </li>
      <li class="route">
        <a>About</a>
      </li>
      <li class="route">
        <a>Resume</a>
      </li>
      <li class="route">
        <a>Contact</a>
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
