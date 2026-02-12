<template>
  <IContainer class="no-padding">
    <ILayout>
      <IRow no-gutter>
        <IColumn md="12" lg="3">
          <aside class="left-aside">
            <div class="news-item card">
              <div>
                <a target="_blank" href="/2026_dance_practice_flyer.jpg">
                  <img src="~/assets/images/2026_dance_practice_flyer.jpg" alt="Mar. 2th, 2026" />
                </a>
              </div>
              <div>
                <h6>
                  <a target="_blank" href="/2026_dance_practice_flyer.jpg">
                    Dance Practice Kick-Off!
                  </a>
                </h6>
                <p>
                  Sunday, March 2nd, 2026 | 6:00pm
                </p>
              </div>
            </div>
          </aside>
        </IColumn>
        <IColumn>
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
