<template>
  <IContainer>
    <SectionHeader>Youth Group</SectionHeader>
    <ILayout>
      <IRow>
        <IColumn md="12" lg="4">
          <LinkCard href="/youth-group/dance-troups/" title="Dance Troups" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/youth-group/youth-news/" title="Youth News" />
        </IColumn>
        <IColumn md="12" lg="4">
          <LinkCard href="/youth-group/photo-gallery/" title="Photo Gallery" />
        </IColumn>
      </IRow>
    </ILayout>
  </IContainer>
</template>
<script setup lang="ts">
useHead({
  titleTemplate: "Youth Group | %s",
});
</script>
