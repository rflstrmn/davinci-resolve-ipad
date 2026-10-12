<script setup lang="ts">
import { useNav } from '@slidev/client'

const { prev, next, isPrintMode } = useNav()
</script>

<template>
  <div v-if="!isPrintMode" class="tap-nav">
    <button aria-label="Zurück" @click="prev">‹</button>
    <button aria-label="Weiter" @click="next">›</button>
  </div>
</template>
