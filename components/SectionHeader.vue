<template>
  <header>
    <h3>
      <slot />
    </h3>
  </header>
</template>
<style scoped lang="scss">
header {
  border-bottom: solid 1px var(--color-primary);
  margin-bottom: 20px;
  margin-top: 12px;
}
</style>
