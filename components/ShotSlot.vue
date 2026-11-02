<script setup lang="ts">
import { computed, ref } from 'vue'

// Zeigt ein Bild aus public/ – fehlt die Datei noch, erscheint ein Platzhalter mit dem Dateinamen.
const props = defineProps<{ src: string }>()
const failed = ref(false)
const url = computed(() => import.meta.env.BASE_URL + props.src.replace(/^\//, ''))
</script>

<template>
  <div class="shot-slot">
    <img v-if="!failed" :src="url" alt="" @error="failed = true">
    <div v-else class="shot-slot-empty">
      Screenshot<br><code>public{{ src }}</code>
    </div>
  </div>
</template>
