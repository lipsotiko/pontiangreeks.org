<template>
  <div>
    <IContainer>
      <PhotoCarousel />
      <SectionHeader>Latest News and Events</SectionHeader>
      <ILayout>
        <IRow no-gutter>
          <IColumn md="12" lg="4">
          </IColumn>
          <IColumn md="12" lg="4">
            <div class="news-item card">
              <div>
                <a
                  target="_blank"
                  href="/2025_Vassilopita_Event.png"
                >
                  <img
                    src="~/assets/images/2025_Vassilopita_Event_thumbnail.jpg"
                    alt="Jan. 5th, 2025"
                  />
                </a>
              </div>
              <div>
                <h6>
                  <a
                    target="_blank"
                    href="/2025_Vassilopita_Event.png"
                  >
                    Vasilopita Cutting
                  </a>
                </h6>
                <p>
                  Saturday, January 5th, 2025 | 3:00pm
                </p>
              </div>
            </div>
          </IColumn>
          <IColumn md="12" lg="4">
          </IColumn>
        </IRow>
      </ILayout>
    </IContainer>
  </div>
</template>
<style scoped>
.news-item img {
  width: 100%;
  margin-bottom: 8px;
}
</style>
