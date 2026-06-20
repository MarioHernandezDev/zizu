<template>
  <div class="page-models pt-[160px] pb-[140px]">
    <div class="layout-container">
      
      <header class="mb-16 md:mb-24 max-w-2xl">
        <span class="text-eyebrow">Zizu Agency</span>
        <h1 class="text-section-title mt-4 mb-6">Nuestros Modelos</h1>
        <p class="text-body-editorial">
          Perfiles singulares adaptados a la narrativa visual de cualquier proyecto. 
          Trabajamos en Granada y Málaga, ofreciendo una amplia diversidad sin restricciones.
        </p>
      </header>

      <main class="grid grid-cols-2 md:grid-cols-3 gap-x-6 gap-y-12 md:gap-x-8 md:gap-y-16">
        <NuxtLink 
          v-for="modelo in models" 
          :key="modelo.id" 
          :to="`/modelos/${modelo.id}`"
          class="group flex flex-col table-item"
        >
          <div class="relative w-full aspect-[3/4] overflow-hidden bg-[#F0EDE8] border border-black/[0.04]">
            <img 
              :src="modelo.image" 
              :alt="modelo.name"
              class="w-full h-full object-cover filter grayscale contrast-[1.02] transition-transform duration-1000 cubic-bezier(0.16, 1, 0.3, 1) group-hover:scale-105"
            />
            
            <div class="absolute inset-0 bg-[#121212]/70 opacity-0 group-hover:opacity-100 transition-opacity duration-400 flex flex-col justify-end p-6 hidden md:flex">
              <div class="text-[#FAF9F6] space-y-1 text-[11px] uppercase tracking-[0.2em] font-light">
                <p>Altura — {{ modelo.measures.altura }}</p>
                <p>Pecho — {{ modelo.measures.pecho }}</p>
                <p>Cintura — {{ modelo.measures.cintura }}</p>
                <p>Cadera — {{ modelo.measures.cadera }}</p>
              </div>
            </div>
          </div>

          <div class="mt-4 flex items-baseline justify-between border-b border-black/[0.08] pb-2">
            <h2 class="font-serif-luxury text-xl md:text-2xl text-[#121212] font-normal tracking-wide">
              {{ modelo.name }}
            </h2>
            <span class="text-[10px] tracking-[0.2em] uppercase text-[#B0A89A] font-light group-hover:text-[#121212] transition-colors duration-300">
              Ver Book →
            </span>
          </div>

          <div class="mt-2 text-[10px] tracking-wider text-[#6E6B66] font-light flex gap-x-3 gap-y-1 flex-wrap uppercase md:hidden">
            <span>Alt: {{ modelo.measures.altura }}</span>
            <span>Cint: {{ modelo.measures.cintura }}</span>
          </div>
        </NuxtLink>
      </main>

      <footer class="mt-24 md:mt-36 pt-16 border-t border-black/[0.08] grid md:grid-cols-2 gap-10">
        <div>
          <h3 class="font-serif-luxury text-2xl mb-4">Perfiles sin restricciones</h3>
          <p class="text-body-editorial text-sm">
            Nosotros no tenemos restricciones de tallas, altura o etnias. Nuestro catálogo está en constante 
            ampliación y contamos actualmente con modelos desde los 17 hasta los 42 años de edad. Disponibles para 
            editoriales, rodajes, desfiles y publicidad.
          </p>
        </div>
        <div class="flex flex-col justify-end md:items-end">
          <p class="text-body-editorial text-sm md:text-right mb-4 max-w-sm">
            Si está interesado en alguno de nuestros perfiles, solicite un dossier detallado o proponga una colaboración.
          </p>
          <a href="mailto:zizuestudio@gmail.com" class="text-[11px] font-medium tracking-[0.3em] uppercase text-[#121212] underline hover:opacity-60 transition-opacity">
            zizuestudio@gmail.com
          </a>
        </div>
      </footer>

    </div>
  </div>
</template>

<script setup>
// Datos estructurados a partir de tu documento original
const models = [
  { id: 'andrea', name: 'Andrea', image: '/img/models/andrea.jpg', measures: { altura: '1,67 cm', pecho: '87 cm', cintura: '67 cm', cadera: '92 cm' } },
  { id: 'ionela', name: 'Ionela', image: '/img/models/ionela.jpg', measures: { altura: '1,64 cm', pecho: '75 cm', cintura: '64 cm', cadera: '94 cm' } },
  { id: 'estela', name: 'Estela', image: '/img/models/estela.jpg', measures: { altura: '1,73 cm', pecho: '87 cm', cintura: '62 cm', cadera: '93 cm' } },
  { id: 'jana', name: 'Jana', image: '/img/models/jana.jpg', measures: { altura: '1,63 cm', pecho: '80 cm', cintura: '64 cm', cadera: '73 cm' } },
  { id: 'jaime', name: 'Jaime', image: '/img/models/jaime.jpg', measures: { altura: '1,77 cm', pecho: '105 cm', cintura: '80 cm', cadera: '100 cm' } },
  { id: 'mar', name: 'Mar', image: '/img/models/mar.jpg', measures: { altura: '1,73 cm', pecho: '80 cm', cintura: '63 cm', cadera: '90 cm' } },
  { id: 'elo', name: 'Elo', image: '/img/models/elo.jpg', measures: { altura: '1,62 cm', pecho: '82 cm', cintura: '65 cm', cadera: '80 cm' } },
  { id: 'lidia', name: 'Lidia', image: '/img/models/lidia.jpg', measures: { altura: '1,72 cm', pecho: '95 cm', cintura: '66 cm', cadera: '80 cm' } },
  { id: 'lucia-p', name: 'Lucia P', image: '/img/models/lucia-p.jpg', measures: { altura: '1,68 cm', pecho: '86 cm', cintura: '64 cm', cadera: '98 cm' } },
  { id: 'lucia-g', name: 'Lucía G', image: '/img/models/lucia-g.jpg', measures: { altura: '1,63 cm', pecho: '78 cm', cintura: '57 cm', cadera: '90 cm' } },
  { id: 'paula', name: 'Paula', image: '/img/models/paula.jpg', measures: { altura: '1,62 cm', pecho: '85 cm', cintura: '67 cm', cadera: '91 cm' } },
  { id: 'lulu', name: 'Lulu', image: '/img/models/lulu.jpg', measures: { altura: '1,76 cm', pecho: '83 cm', cintura: '67 cm', cadera: '99 cm' } },
  { id: 'david', name: 'David', image: '/img/models/david.jpg', measures: { altura: '1,75 cm', pecho: '92 cm', cintura: '83 cm', cadera: '90 cm' } },
  { id: 'luba', name: 'Luba', image: '/img/models/luba.jpg', measures: { altura: '1,72 cm', pecho: '96 cm', cintura: '65 cm', cadera: '95 cm' } },
  { id: 'ms', name: 'M.S.', image: '/img/models/ms.jpg', measures: { altura: '1,68 cm', pecho: '97 cm', cintura: '75 cm', cadera: '97 cm' } },
  { id: 'victoria', name: 'Victoria', image: '/img/models/victoria.jpg', measures: { altura: '1,70 cm', pecho: '81 cm', cintura: '60 cm', cadera: '88 cm' } },
  { id: 'raquel', name: 'Raquel', image: '/img/models/raquel.jpg', measures: { altura: '1,72 cm', pecho: '87 cm', cintura: '63 cm', cadera: '85 cm' } },
  { id: 'dalia', name: 'Dalia', image: '/img/models/dalia.jpg', measures: { altura: '1,72 cm', pecho: '84 cm', cintura: '60 cm', cadera: '90 cm' } },
  { id: 'daniela', name: 'Daniela', image: '/img/models/daniela.jpg', measures: { altura: '1,72 cm', pecho: '90 cm', cintura: '70 cm', cadera: '100 cm' } },
  { id: 'macarena', name: 'Macarena', image: '/img/models/macarena.jpg', measures: { altura: '1,61 cm', pecho: '95 cm', cintura: '65 cm', cadera: '90 cm' } }
]
</script>