<template>
  <IContainer>
    <SectionHeader>History</SectionHeader>
    <ILayout>
      <IRow>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/chronology/" title="Chronology" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/religion/" title="Religion" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/dialect/" title="Dialect" />
        </IColumn>
      </IRow>
      <IRow>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/poems/" title="Peoms" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/dances/" title="Dances" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/history/oral-stories/" title="Oral Stories" />
        </IColumn>
      </IRow>
    </ILayout>
  </IContainer>
</template>
<script setup lang="ts">
useHead({
  titleTemplate: "History | %s",
});
</script>
