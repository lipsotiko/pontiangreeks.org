<template>
  <IContainer class="no-padding">
    <ILayout>
      <IRow no-gutter>
        <!--<IColumn md="12" lg="3">
          <aside class="left-aside">
            <div class="news-item card">
              <div>
                <a target="_blank" href="/2025_Vassilopita_Event.png">
                  <img src="~/assets/images/2025_Vassilopita_Event_thumbnail.jpg" alt="Jan. 5th, 2025" />
                </a>
              </div>
              <div>
                <h6>
                  <a target="_blank" href="/2025_Vassilopita_Event.png">
                    Vasilopita Cutting
                  </a>
                </h6>
                <p>
                  Saturday, January 5th, 2025 | 3:00pm
                </p>
              </div>
            </div>
          </aside>
        </IColumn>-->
        <IColumn sm="12">
          <PhotoCarousel />
        </IColumn>
      </IRow>
    </ILayout>
  </IContainer>
</template>
<style scoped>
.no-padding {
  padding: 0;;
}

.left-aside {
  /* margin: 22px; */
  height: 100%;
}

.news-item img {
  width: 100%;
  margin-bottom: 8px;
}
</style>
