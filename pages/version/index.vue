<template>
  <IContainer>
    <p>Build Date: {{ $config.public.buildDate }}</p>
    <p>API Base: {{ $config.public.baseURL }}</p>
  </IContainer>
</template>
<script>
export default {
  name: "Version",
};
</script>
