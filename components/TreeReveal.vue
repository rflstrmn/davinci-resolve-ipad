<script lang="ts">
// Seiten, deren Animation schon fertig gelaufen ist (überlebt das Neu-Rendern beim Folienwechsel)
const finished = new Set<number>()
</script>

<script setup lang="ts">
import { computed, ref, watch } from 'vue'
import { useSlideContext } from '@slidev/client'

const props = withDefaults(defineProps<{
  /** Klick, ab dem die Animation startet (0 = sobald die Folie erscheint) */
  at?: number
  /** Gesamtdauer der Animation in ms */
  duration?: number
}>(), { at: 0, duration: 6000 })

const { $nav, $clicks, $page, $renderContext } = useSlideContext()

const isCurrent = computed(() => $nav.value.currentSlideNo === $page.value)
const active = computed(() => isCurrent.value && $clicks.value >= props.at)
const done = ref(finished.has($page.value))

watch(active, (now) => {
  if (now && !done.value) {
    const page = $page.value
    setTimeout(() => finished.add(page), props.duration)
  }
  else if (!now && isCurrent.value) {
    // Zurückgeklickt: beim nächsten Mal wieder animieren
    finished.delete($page.value)
    done.value = false
  }
}, { immediate: true })

const state = computed(() => {
  if ($renderContext.value !== 'slide' && $renderContext.value !== 'presenter') return 'tree-done'
  if (done.value) return 'tree-done'
  return active.value ? 'tree-run' : ''
})
</script>

<template>
  <div :class="state">
    <slot />
  </div>
</template>
