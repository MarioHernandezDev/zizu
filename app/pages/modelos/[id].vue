<template>
  <div v-if="modelo" class="page-model-detail pt-[160px] pb-[140px]">
    <div class="layout-container">
      
      <NuxtLink to="/modelos" class="inline-flex items-center text-[11px] uppercase tracking-[0.25em] text-[#B0A89A] hover:text-[#121212] transition-colors mb-12">
        ← Volver al catálogo
      </NuxtLink>

      <div class="grid md:grid-cols-12 gap-12 md:gap-16 items-start">
        
        <div class="md:col-span-6 lg:col-span-7">
          <div class="bg-[#F0EDE8] border border-black/[0.04] overflow-hidden aspect-[3/4]">
            <img 
              :src="modelo.image" 
              :alt="modelo.name" 
              class="w-full h-full object-cover filter grayscale contrast-[1.02]"
            />
          </div>
        </div>

        <div class="md:col-span-6 lg:col-span-5 md:sticky md:top-[120px]">
          
          <MiniHero 
            eyebrow="Book Oficial"
            :title="modelo.name"
          />

          <div class="border-t border-black/[0.1] divide-y divide-black/[0.06] mb-12">
            <div class="py-4 flex justify-between text-sm tracking-wide">
              <span class="text-[#6E6B66] font-light uppercase text-[11px] tracking-[0.15em]">Altura</span>
              <span class="text-[#121212] font-normal">{{ modelo.measures.altura }}</span>
            </div>
            <div class="py-4 flex justify-between text-sm tracking-wide">
              <span class="text-[#6E6B66] font-light uppercase text-[11px] tracking-[0.15em]">Pecho</span>
              <span class="text-[#121212] font-normal">{{ modelo.measures.pecho }}</span>
            </div>
            <div class="py-4 flex justify-between text-sm tracking-wide">
              <span class="text-[#6E6B66] font-light uppercase text-[11px] tracking-[0.15em]">Cintura</span>
              <span class="text-[#121212] font-normal">{{ modelo.measures.cintura }}</span>
            </div>
            <div class="py-4 flex justify-between text-sm tracking-wide">
              <span class="text-[#6E6B66] font-light uppercase text-[11px] tracking-[0.15em]">Cadera</span>
              <span class="text-[#121212] font-normal">{{ modelo.measures.cadera }}</span>
            </div>
            <div class="py-4 flex justify-between text-sm tracking-wide">
              <span class="text-[#6E6B66] font-light uppercase text-[11px] tracking-[0.15em]">Delegaciones</span>
              <span class="text-[#121212] font-normal">Granada / Málaga</span>
            </div>
          </div>

          <div class="bg-[#F0EDE8]/50 p-6 border border-black/[0.04]">
            <h3 class="text-[11px] font-medium tracking-[0.25em] uppercase text-[#121212] mb-3">Solicitud de Booking</h3>
            <p class="text-xs text-[#6E6B66] line-height-relaxed mb-6 font-light">
              Para contar con {{ modelo.name }} en su próximo proyecto publicitario, editorial o rodaje, contacte con nuestra mesa de asignación indicando los detalles.
            </p>
            <a 
              :href="`mailto:zizuestudio@gmail.com?subject=Reserva%20de%20Modelo%20-%20${modelo.name}`"
              class="block w-full text-center text-[10px] font-medium tracking-[0.3em] uppercase text-[#FAF9F6] bg-[#121212] py-4 transition-transform active:scale-[0.99] hover:bg-[#121212]/90"
            >
              Proponer Proyecto
            </a>
          </div>
        </div>

      </div>
    </div>
  </div>
  
  <div v-else class="min-h-[60vh] flex items-center justify-center">
    <p class="text-sm tracking-widest text-[#B0A89A] uppercase">Perfil no localizado.</p>
  </div>
</template>

<script setup>
import { useRoute } from 'vue-router'
import { computed } from 'vue'

const route = useRoute()

// Catálogo estructurado unificado con rutas absolutas locales fijadas
const modelsList = [
  { id: 'andrea', name: 'Andrea', image: '/img/models/default-model.jpg', measures: { altura: '1,67 cm', pecho: '87 cm', cintura: '67 cm', cadera: '92 cm' } },
  { id: 'ionela', name: 'Ionela', image: '/img/models/default-model.jpg', measures: { altura: '1,64 cm', pecho: '75 cm', cintura: '64 cm', cadera: '94 cm' } },
  { id: 'estela', name: 'Estela', image: '/img/models/default-model.jpg', measures: { altura: '1,73 cm', pecho: '87 cm', cintura: '62 cm', cadera: '93 cm' } },
  { id: 'jana', name: 'Jana', image: '/img/models/default-model.jpg', measures: { altura: '1,63 cm', pecho: '80 cm', cintura: '64 cm', cadera: '73 cm' } },
  { id: 'jaime', name: 'Jaime', image: '/img/models/default-model.jpg', measures: { altura: '1,77 cm', pecho: '105 cm', cintura: '80 cm', cadera: '100 cm' } },
  { id: 'mar', name: 'Mar', image: '/img/models/default-model.jpg', measures: { altura: '1,73 cm', pecho: '80 cm', cintura: '63 cm', cadera: '90 cm' } },
  { id: 'elo', name: 'Elo', image: '/img/models/default-model.jpg', measures: { altura: '1,62 cm', pecho: '82 cm', cintura: '65 cm', cadera: '80 cm' } },
  { id: 'lidia', name: 'Lidia', image: '/img/models/default-model.jpg', measures: { altura: '1,72 cm', pecho: '95 cm', cintura: '66 cm', cadera: '80 cm' } },
  { id: 'lucia-p', name: 'Lucia P', image: '/img/models/default-model.jpg', measures: { altura: '1,68 cm', pecho: '86 cm', cintura: '64 cm', cadera: '98 cm' } },
  { id: 'lucia-g', name: 'Lucía G', image: '/img/models/default-model.jpg', measures: { altura: '1,63 cm', pecho: '78 cm', cintura: '57 cm', cadera: '90 cm' } },
  { id: 'paula', name: 'Paula', image: '/img/models/default-model.jpg', measures: { altura: '1,62 cm', pecho: '85 cm', cintura: '67 cm', cadera: '91 cm' } },
  { id: 'lulu', name: 'Lulu', image: '/img/models/default-model.jpg', measures: { altura: '1,76 cm', pecho: '83 cm', cintura: '67 cm', cadera: '99 cm' } },
  { id: 'david', name: 'David', image: '/img/models/default-model.jpg', measures: { altura: '1,75 cm', pecho: '92 cm', cintura: '83 cm', cadera: '90 cm' } },
  { id: 'luba', name: 'Luba', image: '/img/models/default-model.jpg', measures: { altura: '1,72 cm', pecho: '96 cm', cintura: '65 cm', cadera: '95 cm' } },
  { id: 'ms', name: 'M.S.', image: '/img/models/default-model.jpg', measures: { altura: '1,68 cm', pecho: '97 cm', cintura: '75 cm', cadera: '97 cm' } },
  { id: 'victoria', name: 'Victoria', image: '/img/models/default-model.jpg', measures: { altura: '1,70 cm', pecho: '81 cm', cintura: '60 cm', cadera: '88 cm' } },
  { id: 'raquel', name: 'Raquel', image: '/img/models/default-model.jpg', measures: { altura: '1,72 cm', pecho: '87 cm', cintura: '63 cm', cadera: '85 cm' } },
  { id: 'dalia', name: 'Dalia', image: '/img/models/default-model.jpg', measures: { altura: '1,72 cm', pecho: '84 cm', cintura: '60 cm', cadera: '90 cm' } },
  { id: 'daniela', name: 'Daniela', image: '/img/models/default-model.jpg', measures: { altura: '1,72 cm', pecho: '90 cm', cintura: '70 cm', cadera: '100 cm' } },
  { id: 'macarena', name: 'Macarena', image: '/img/models/default-model.jpg', measures: { altura: '1,61 cm', pecho: '95 cm', cintura: '65 cm', cadera: '90 cm' } }
]

// Extracción computada del perfil según los parámetros URL reactivos de la ruta Nuxt
const modelo = computed(() => {
  return modelsList.find(m => m.id === route.params.id)
})
</script>