<template>
  <div class="card">
    <h6>
      <a :href="href">{{ title }}</a>
    </h6>
    <p>Pontian Greek Society of Chicago - {{ title }}</p>
  </div>
</template>
<script>
export default {
  props: ["href", "title"],
};
</script>
