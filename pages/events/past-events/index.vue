<template>
  <IContainer>
    <SectionHeader>Past Events</SectionHeader>
    <ILayout>
      <IRow>
        <IColumn md="12" lg="6">
          <LinkCard href="/events/past-events/lectures/" title="Lectures" />
        </IColumn>
        <IColumn md="12" lg="6">
          <LinkCard
            href="/events/past-events/conferences/"
            title="Conferences"
          />
        </IColumn>
      </IRow>
    </ILayout>
  </IContainer>
</template>
<script setup lang="ts">
useHead({
  titleTemplate: "Past Events | %s",
});
</script>
