<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<script setup lang="ts">
useHead({
  title: 'Pontian Greek Society of Chicago "Xeneteas"'
})
</script>
<style>
.navbar {
  -webkit-box-shadow: none;
  box-shadow: none;
  background-color: white;
  border: none;
  padding: 0 0 24px 0;
}
.navbar > .container {
  padding: 0;
}

.navbar .navbar-collapsible .nav-item {
  background: none;
  background-color: white;
  border-radius: 0;
  transition: 0.2s;
}
.navbar .navbar-collapsible .nav-item:hover {
  background: none;
  color: #ad4f18;
}

.nav {
  border-top: solid 2px #ad4f18;
  width: 100%;
  text-transform: uppercase;
}

a {
  text-decoration: none;
  color: #ad4f18;
}

a:hover {
  text-decoration: none;
  color: #b38970;
}
</style>
