<template>
  <IContainer class="no-padding">
    <ILayout>
      <IRow no-gutter>
        <IColumn md="12" lg="3">
          <aside class="left-aside">
            <div class="news-item card">
              <div>
                <a target="_blank" href="/2026_Vassilopita_Event.png">
                  <img src="~/assets/images/2026_Vassilopita_Event_thumbnail.png" alt="Jan. 5th, 2025" />
                </a>
              </div>
              <div>
                <h6>
                  <a target="_blank" href="/2026_Vassilopita_Event.png">
                    2026 Vassilopita Cutting
                  </a>
                </h6>
                <p>
                  Sundy, January 11th, 2026 | 2:00pm
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
