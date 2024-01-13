<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<script setup lang="ts">
useHead({
  title: 'Pontian Greek Society of Chicago "Xeneteas"',
});
</script>
<style lang="scss">
.navbar > .container {
  padding: 0;
}

.nav {
  border-top: solid 2px $primary;
  text-transform: uppercase;
}

a {
  text-decoration: none;
  color: $primary;
}

a:hover {
  text-decoration: none;
  color: $primary-light;
}

h1,
h2,
h3,
h4 {
  text-transform: uppercase;
  font-family: "Michroma";
  color: $primary;
}

h5,
h6 {
  font-family: "Noto Sans", sans-serif;
  color: $primary;
}

h3 {
  font-size: 16px;
  font-weight: 400;
}

h4 {
  font-size: 14px;
}

h5 {
  font-size: 18px;
}

p,
li {
  color: $light-grey;
  font-size: 14px;
}

.layout-header {
  margin-bottom: 28px;
}

.card {
  border: 1px solid #dedede;
  margin: 8px;
  padding: 12px;
  height: 95%;
}

:root {
  --navbar--light--background: white;
  --navbar--light--item--hover--background: rgb(238, 238, 238);
  --navbar--light--collapsed--background: white;
  --navbar--collapsed--item--background: white;
  --navbar--collapsed--item--hover--background: rgb(238, 238, 238);
  --navbar--item--hover--color: #ad4f18;
}

.navbar > .container {
  display: inline-block;
}

.navbar .collapse-toggle {
  float: right;
}

@font-face {
  font-family: "Michroma";
  src: url("~/assets//Michroma.ttf");
}
</style>
