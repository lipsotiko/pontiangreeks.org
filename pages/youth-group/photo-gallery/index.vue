<template>
  <IContainer>
    <SectionHeader>Photo Gallery</SectionHeader>
    <article>
      <ILayout>
        <IRow v-for="i in 4">
          <IColumn v-for="i in 4" sm="12" md="6" lg="3">
            <img src="~/assets/images/placeholder_180x140.jpg" />
          </IColumn>
        </IRow>
      </ILayout>
    </article>
  </IContainer>
</template>
<style scoped>
img {
  margin: 12px;
}
</style>
