<template>
    <header class="news-header">
        <h3 class="news-events-title">
            <slot />
        </h3>
    </header>
</template>
<script>
export default {
    props: ['title']
}
</script>
<style scoped>
.news-header {
    border-bottom: solid 2px #ad4f18;
    margin-bottom: 20px;
    margin-top: 12px;
}

.news-events-title {
    width: fit-content;
    font-family: "Noto Sans", sans-serif; /* find this font... */
    font-weight: normal;
    text-transform: uppercase;
    font-size: 16px;
    padding: 10px 14px;
    margin: 2px;
    color: #ad4f18;
    background: url("/assets/themes/professional/assets/images/pattern2.png");
}
</style>
