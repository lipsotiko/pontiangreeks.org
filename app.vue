<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<style>
.navbar {
  -webkit-box-shadow: none;
  box-shadow: none;
  background-color: white;
  border: none;
  padding: 0;
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
</style>
