<template>
  <IContainer class="no-padding">
    <ILayout>
      <IRow no-gutter>
        <IColumn v-if="isEventPast('2025-12-14')" md="12" lg="3">
          <aside class="left-aside">
            <div class="news-item card">
              <div>
                <a target="_blank" href="/Pontian_Society_Christmas_Party_2025.pdf">
                  <img src="~/assets/images/2025_Christmas_Party_thumbnail.jpg" alt="Jan. 5th, 2025" />
                </a>
              </div>
              <div>
                <h6>
                  <a target="_blank" href="/Pontian_Society_Christmas_Party_2025.pdf">
                    Christmas Party
                  </a>
                </h6>
                <p>
                  Saturday, December 13th, 2025 | 6:30pm<br>
                  Click here to <a target="_blank" href="https://docs.google.com/forms/d/e/1FAIpQLScVvrPBHFCmAXIW6Gb8XPOkfK3StLJbVrMxMdqfzQg_JAd-xg/viewform?pli=1">
                    RSVP
                  </a>
                </p>
              </div>
            </div>
          </aside>
        </IColumn>
        <IColumn sm="12">
          <PhotoCarousel />
        </IColumn>
      </IRow>
    </ILayout>
  </IContainer>
</template>
<script setup>
const isEventPast = (targetDate) => new Date() < new Date(targetDate);
</script>
<style scoped>
.no-padding {
  padding: 0;;
}

.left-aside {
  height: 100%;
}

.news-item img {
  width: 100%;
  margin-bottom: 8px;
}

h6, p {
  margin: 0 2px;
}
</style>
