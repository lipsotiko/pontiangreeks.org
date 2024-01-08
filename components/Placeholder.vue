<template>
  <div
    :style="{
      height,
      width,
      float,
      display,
      margin: '12px',
      background: 'rgb(125 125 125 / 7%)',
    }"
  ></div>
</template>
<script>
export default {
  name: "Placeholder",
  props: {
    height: {
      default: "100px",
    },
    width: {
      default: "100px",
    },
    float: {
      default: null,
    },
    display: {
      default: "inline",
    }
  }
};
</script>