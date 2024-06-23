<template>
  <p>
    Pontian Greek Society of Chicago<br />
    {{ addressLine1 }}<br />
    {{ addressLine2 }}<br /><br />
  </p>
</template>
<script setup lang="ts">
const { xeniteasEmail, addressLine1, addressLine2 } = useAppConfig();
</script>
