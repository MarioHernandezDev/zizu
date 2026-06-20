<template>
  <header class="mb-16 md:mb-24 max-w-2xl animate-fade-in">
    <span v-if="eyebrow" class="text-eyebrow block">
      {{ eyebrow }}
    </span>
    
    <h1 class="text-section-title mt-4 mb-6 text-[#121212]">
      {{ title }}
    </h1>
    
    <p v-if="description" class="text-body-editorial">
      {{ description }}
    </p>
  </header>
</template>

<script setup>
defineProps({
  title: {
    type: String,
    required: true
  },
  eyebrow: {
    type: String,
    default: ''
  },
  description: {
    type: String,
    default: ''
  }
})
</script>

<style scoped>
.animate-fade-in {
  animation: fadeIn 1.2s cubic-bezier(0.16, 1, 0.3, 1) both;
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>