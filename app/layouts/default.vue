<template>
  <div class="min-h-screen bg-[#FAF9F6] text-[#121212] antialiased flex flex-col">

    <header
      class="fixed top-0 left-0 w-full z-50 transition-all duration-500 ease-in-out"
      :class="[
        (scrolled || !isHome) ? 'bg-[#FAF9F6]/95 backdrop-blur-md border-b border-black/[0.07]' : 'bg-transparent border-b border-black/[0.05]',
        menuOpen ? 'h-[120px]' : ((scrolled || !isHome) ? 'h-[80px]' : 'h-[120px]')
      ]"
    >
      <div class="max-w-7xl mx-auto px-8 md:px-14 h-full flex items-center justify-between relative z-50">

        <NuxtLink to="/" class="group h-full flex items-center" aria-label="Zizu Studio — inicio">
          <img
            src="/img/logo.png"
            alt="Zizu Studio"
            class="h-full w-auto object-contain object-left transition-all duration-300 group-hover:opacity-60"
          />
        </NuxtLink>

        <nav class="hidden md:flex items-center gap-11" aria-label="Navegación principal">
          <NuxtLink
            v-for="link in navLinks"
            :key="link.path"
            :to="link.path"
            class="nav-link"
            :class="(scrolled || !isHome) ? 'nav-link--scrolled' : 'nav-link--transparent'"
            active-class="nav-link--active"
            :aria-current="$route.path === link.path ? 'page' : undefined"
          >
            <span class="nav-link__track" aria-hidden="true">
              <span class="nav-link__top">{{ link.name }}</span>
              <span class="nav-link__bot">{{ link.name }}</span>
            </span>
            <span class="sr-only">{{ link.name }}</span>
          </NuxtLink>
        </nav>

        <button
          class="md:hidden flex flex-col justify-center gap-[5px] w-8 h-8 -mr-1 relative z-50"
          aria-label="Menú"
          :aria-expanded="menuOpen"
          @click="menuOpen = !menuOpen"
        >
          <span
            class="block w-5 h-px transition-all duration-400 origin-center"
            :class="[
              menuOpen ? 'rotate-45 translate-y-[3px]' : '',
              (scrolled || !isHome || menuOpen) ? 'bg-[#121212]' : 'bg-[#FAF9F6]'
            ]"
          />
          <span
            class="block w-5 h-px transition-all duration-300"
            :class="[
              menuOpen ? 'opacity-0 scale-x-50' : '',
              (scrolled || !isHome || menuOpen) ? 'bg-[#121212]' : 'bg-[#FAF9F6]'
            ]"
          />
          <span
            class="block w-5 h-px transition-all duration-400 origin-center"
            :class="[
              menuOpen ? '-rotate-45 -translate-y-[3px]' : '',
              (scrolled || !isHome || menuOpen) ? 'bg-[#121212]' : 'bg-[#FAF9F6]'
            ]"
          />
        </button>

      </div>

      <div
        class="md:hidden fixed inset-0 w-full h-screen z-40 flex flex-col justify-center px-8 mobile-menu-overlay transition-all duration-600 ease-[cubic-bezier(0.16,1,0.3,1)]"
        :class="menuOpen ? 'opacity-100 pointer-events-auto' : 'opacity-0 pointer-events-none'"
      >
        <nav class="flex flex-col gap-8 offsets-mobile-nav">
          <NuxtLink
            v-for="(link, index) in navLinks"
            :key="link.path"
            :to="link.path"
            class="mobile-nav-link"
            :class="$route.path === link.path ? 'mobile-nav-link--active' : ''"
            :style="menuOpen ? `transition-delay: ${0.1 + index * 0.08}s; transform: translateY(0); opacity: 1;` : 'transform: translateY(20px); opacity: 0;'"
            @click="menuOpen = false"
          >
            {{ link.name }}
          </NuxtLink>
        </nav>
      </div>
    </header>

    <main class="flex-grow">
      <slot />
    </main>

    <footer class="py-9 border-t border-black/[0.05] bg-[#FAF9F6]">
      <div class="max-w-7xl mx-auto px-8 md:px-14 flex justify-between items-center">
        <p class="font-sans text-[8px] font-light tracking-[0.4em] uppercase text-[#C0B8B0]">
          &copy; {{ new Date().getFullYear() }} Zizu Studio
        </p>
        <div class="flex gap-7">
          <a
            href="https://instagram.com"
            target="_blank"
            rel="noopener"
            class="font-sans text-[8px] font-light tracking-[0.4em] uppercase text-[#C0B8B0] hover:text-[#121212] transition-colors duration-300"
          >
            Instagram
          </a>
          <a
            href="/legal"
            class="font-sans text-[8px] font-light tracking-[0.4em] uppercase text-[#C0B8B0] hover:text-[#121212] transition-colors duration-300"
          >
            Legal
          </a>
        </div>
      </div>
    </footer>

  </div>
</template>

<script setup>
import { ref, watch, onMounted, onUnmounted, computed } from 'vue'
import { useRoute } from 'vue-router'

const navLinks = [
  { name: 'Modelos', path: '/modelos' },
  { name: 'Casting', path: '/casting' },
  { name: 'Contacto', path: '/contacto' },
]

const scrolled = ref(false)
const menuOpen = ref(false)
const route = useRoute()

// Variable computada reactiva para comprobar si estamos en la Home ('/')
const isHome = computed(() => route.path === '/')

// Bloquear el scroll de la página trasera cuando el menú está desplegado
watch(menuOpen, (val) => {
  if (process.client) {
    document.body.style.overflow = val ? 'hidden' : ''
  }
})

watch(() => route.path, () => { menuOpen.value = false })

onMounted(() => {
  const onScroll = () => { scrolled.value = window.scrollY > 40 }
  window.addEventListener('scroll', onScroll, { passive: true })
  onUnmounted(() => window.removeEventListener('scroll', onScroll))
})
</script>

<style scoped>
/* --- Estructura Base del Link Reveal (Desktop) --- */
.nav-link {
  position: relative;
  display: block;
  height: 18px;
  overflow: hidden;
  cursor: pointer;
}

.nav-link__track {
  display: flex;
  flex-direction: column;
  transition: transform 0.44s cubic-bezier(0.16, 1, 0.3, 1);
}

.nav-link__top,
.nav-link__bot {
  font-size: 13px;
  font-weight: 600;
  letter-spacing: 0.25em;
  text-transform: uppercase;
  display: block;
  height: 18px;
  line-height: 18px;
  white-space: nowrap;
  transition: color 0.44s cubic-bezier(0.16, 1, 0.3, 1);
}

/* Solo aplicamos sombra de texto en la home cuando no se ha hecho scroll */
.nav-link--transparent .nav-link__top,
.nav-link--transparent .nav-link__bot {
  text-shadow: 0 1px 4px rgba(0, 0, 0, 0.15);
}

.nav-link::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 0;
  height: 1px;
  transition: width 0.5s cubic-bezier(0.16, 1, 0.3, 1), background-color 0.44s;
}

.nav-link:hover .nav-link__track,
.nav-link--active .nav-link__track {
  transform: translateY(-18px);
}

.nav-link:hover::after,
.nav-link--active::after {
  width: 100%;
}

/* ─── ESCENARIO 1: Nav transparente arriba (Sobre Hero Oscuro - Solo en Home) ─── */
.nav-link--transparent .nav-link__top {
  color: rgba(250, 249, 246, 0.7);
}
.nav-link--transparent .nav-link__bot {
  color: #FAF9F6;
}
.nav-link--transparent::after {
  background: #FAF9F6;
}
.nav-link--transparent.nav-link--active .nav-link__top {
  color: #FAF9F6;
}

/* ─── ESCENARIO 2: Nav tras hacer Scroll u otras páginas (Sobre Fondo Claro) ─── */
.nav-link--scrolled .nav-link__top {
  color: #706E6B;
}
.nav-link--scrolled .nav-link__bot {
  color: #121212;
}
.nav-link--scrolled::after {
  background: #121212;
}
.nav-link--scrolled.nav-link--active .nav-link__top {
  color: #121212;
}
.nav-link--scrolled .nav-link__top,
.nav-link--scrolled .nav-link__bot {
  text-shadow: none;
}

/* ─── ESTILOS PARA EL MENÚ MÓVIL FULLSCREEN EDITORIAL ─── */
.offsets-mobile-nav {
  padding-top: 40px;
}

.mobile-nav-link {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: 38px;
  font-weight: 300;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: #B0A89A;
  text-decoration: none;
  display: inline-block;
  transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1), opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1), color 0.3s;
}

.mobile-nav-link:hover,
.mobile-nav-link--active {
  color: #121212;
  transform: translateX(8px) !important;
}

/* Animaciones de entrada en carga inicial */
@keyframes fadeUp {
  from { opacity: 0; transform: translateY(7px); }
  to   { opacity: 1; transform: translateY(0); }
}

header img {
  animation: fadeUp 0.7s cubic-bezier(0.16, 1, 0.3, 1) 0.1s both;
}

.nav-link:nth-child(1) { animation: fadeUp 0.6s cubic-bezier(0.16, 1, 0.3, 1) 0.22s both; }
.nav-child:nth-child(2) { animation: fadeUp 0.6s cubic-bezier(0.16, 1, 0.3, 1) 0.30s both; }
.nav-link:nth-child(3) { animation: fadeUp 0.6s cubic-bezier(0.16, 1, 0.3, 1) 0.38s both; }

@media (prefers-reduced-motion: reduce) {
  .nav-link__track,
  .nav-link::after,
  header img,
  .nav-link,
  .mobile-nav-link {
    animation: none !important;
    transition: none !important;
  }
}

.mobile-menu-overlay {
  background-color: rgba(250, 249, 246, 0.98);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
}
</style>