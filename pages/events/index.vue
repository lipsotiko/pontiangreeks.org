<template>
  <IContainer>
    <SectionHeader>Events</SectionHeader>
    <div class="past-events">
      <a href="/events/past-events">Past Events</a>
    </div>
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
  titleTemplate: "Events | %s",
});
</script>
<style scoped>
.past-events {
  display: flex;
  justify-content: flex-end;
}
</style>
