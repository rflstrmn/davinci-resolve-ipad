<script setup lang="ts">
defineProps<{ href: string }>()
</script>

<template>
  <a :href="href" target="_blank" rel="noopener" class="link-button">
    <slot />
    <span class="arrow">↗</span>
  </a>
</template>
