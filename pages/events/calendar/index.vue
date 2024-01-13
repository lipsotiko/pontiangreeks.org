<template>
  <IContainer>
    <SectionHeader>Calendar</SectionHeader>
    <iframe
      style="border: 0"
      src="https://calendar.google.com/calendar/embed?src=pontiangreeks%40gmail.com&amp;ctz=America/Chicago"
      width="960"
      height="720"
      frame
      scrolling="no"
    ></iframe>
  </IContainer>
</template>
<script setup lang="ts">
useHead({
  titleTemplate: "Calendar | %s",
});
</script>
