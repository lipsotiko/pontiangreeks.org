<template>
  <div class="card">
    <Carousel :autoplay="5000" :wrap-around="true">
      <Slide key="1">
        <div>
          <img src="~/assets/images/2023_youth_convention.jpg" />
          14th Annual Pontian Youth Festival 2023
        </div>
      </Slide>
      <Slide key="2">
        <div>
          <img src="~/assets/images/2016/10/3rd-Conference.jpg" />
          <a href="/events/past-events/conferences/november-2010-conference/">
            Third Academic Conference 2010
          </a>
        </div>
      </Slide>
      <Slide key="3">
        <div>
          <img src="~/assets/images/2016/10/2nd-Conference.jpg" />
          <a href="/events/past-events/conferences/november-2009-conference/">
            Second Academic Conference 2009
          </a>
        </div>
      </Slide>
      <Slide key="4">
        <div>
          <img src="~/assets/images/2016/10/1st-Conference.jpg" />
          <a href="/events/past-events/conferences/may-2008-conference/">
            First Academic Conference 2008
          </a>
        </div>
      </Slide>
      <template #addons>
        <Navigation />
        <Pagination />
      </template>
    </Carousel>
  </div>
</template>
<script>
import { defineComponent } from "vue";
import { Carousel, Navigation, Pagination, Slide } from "vue3-carousel";

import "vue3-carousel/dist/carousel.css";
export default defineComponent({
  name: "PhtotCarousel",
  components: {
    Carousel,
    Slide,
    Navigation,
    Pagination,
  },
});
</script>
<style scoped>
img {
  width: 100%;
  max-height: 500px;
}
</style>
