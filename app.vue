<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<script setup lang="ts">
const url = "https://pontiangreeks.org";
const title = 'Pontian Greek Society of Chicago "Xeneteas"';

useHead({
  title,
  meta: [
    {
      name: "description",
      property: "og:description",
      content: "Preserving the history and heritage of the Pontian Greeks",
    }
  ],
  link: [
    {
      href: url,
      rel: "canonical",
    },
  ],
});

useSeoMeta({
  title,
  ogUrl: url,
  ogTitle: title,
  ogImage: `${url}/trireme_logo.png`,
  ogImageWidth: 600,
  ogImageHeight: 600,
  ogType: "website"
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

.navbar > .container {
  display: inline-block;
}

.navbar .collapse-toggle {
  position: absolute;
  right: 18px;
  top: 38px;
}

.navbar .navbar-brand {
  padding-left: 0;
  margin-right: 28px;
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
}

:root {
  --navbar--light--background: white;
  --navbar--light--item--hover--background: rgb(238, 238, 238);
  --navbar--light--collapsed--background: white;
  --navbar--collapsed--item--background: white;
  --navbar--collapsed--item--hover--background: rgb(238, 238, 238);
  --navbar--item--hover--color: #ad4f18;
}

@font-face {
  font-family: "Michroma";
  src: url("~/assets//Michroma.ttf");
}
</style>
