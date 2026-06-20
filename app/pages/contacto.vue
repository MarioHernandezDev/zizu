<template>
  <div class="page-contacto pt-[160px] pb-[140px]">
    <div class="layout-container">
      
      <MiniHero 
        eyebrow="Contacto & Reservas"
        title="Inicie una conversación"
        description="Si desea proponer un proyecto publicitario, editorial o rodaje, o necesita información sobre nuestras tarifas y disponibilidad, estamos a su disposición a través de nuestros canales directos."
      />

      <main class="grid lg:grid-cols-12 gap-12 lg:gap-16 items-start mt-12 md:mt-16">
        
        <div class="lg:col-span-5 space-y-10">
          
          <div class="w-full bg-[#F0EDE8] aspect-[4/5] overflow-hidden border border-black/[0.04] relative group">
            <img 
              src="/img/models/default-model.jpg" 
              alt="Zizu Studio Creative Workspace" 
              class="w-full h-full object-cover filter grayscale contrast-[1.05] brightness-[0.95] group-hover:scale-105 transition-transform duration-700 ease-out" 
            />
            <div class="absolute inset-0 bg-gradient-to-t from-black/40 via-transparent to-transparent opacity-60"></div>
            <span class="absolute bottom-4 left-4 text-[9px] uppercase tracking-[0.3em] text-[#FAF9F6] font-light">
              Zizu Management © 2026
            </span>
          </div>

          <div class="space-y-8 pt-2">
            <div class="group border-b border-black/[0.08] pb-6">
              <span class="text-[10px] uppercase tracking-[0.2em] text-[#B0A89A] font-medium block">Mesa de asignación</span>
              <h2 class="font-serif-luxury text-xl text-[#121212] mt-1 mb-2 font-normal">Correo Electrónico</h2>
              <a 
                href="mailto:zizuestudio@gmail.com?subject=Consulta%20de%20Proyecto%20-%20Zizu"
                class="inline-flex items-center text-xs tracking-wider text-[#121212] font-light hover:opacity-60 transition-all duration-300"
              >
                zizuestudio@gmail.com <span class="ml-2 group-hover:translate-x-1 transition-transform duration-300">→</span>
              </a>
            </div>

            <div class="group border-b border-black/[0.08] pb-6">
              <span class="text-[10px] uppercase tracking-[0.2em] text-[#B0A89A] font-medium block">Atención inmediata</span>
              <h2 class="font-serif-luxury text-xl text-[#121212] mt-1 mb-2 font-normal">WhatsApp Business</h2>
              <a 
                href="https://wa.me/34600000000?text=Hola,%20me%20gustaría%20solicitar%20información%20sobre%20un%20booking"
                target="_blank"
                rel="noopener"
                class="inline-flex items-center text-xs tracking-wider text-[#121212] font-light hover:opacity-60 transition-all duration-300"
              >
                +34 600 00 00 00 <span class="ml-2 group-hover:translate-x-1 transition-transform duration-300">→</span>
              </a>
            </div>

            <div class="flex justify-between items-start text-xs font-light tracking-wide text-[#6E6B66]">
              <div>
                <span class="text-[9px] uppercase tracking-[0.2em] text-[#B0A89A] font-medium block mb-1">Estudio Central</span>
                <p class="text-[#121212] font-normal">Calle Recogidas, 12, Centro</p>
                <p>18005 Granada, España.</p>
              </div>
              <div class="text-right">
                <span class="text-[9px] uppercase tracking-[0.2em] text-[#B0A89A] font-medium block mb-1">Horario</span>
                <p class="text-[#121212]">Lunes a Viernes</p>
                <p>09:00 — 18:00 h.</p>
              </div>
            </div>
          </div>

        </div>

        <div class="lg:col-span-7 bg-[#F0EDE8]/30 p-8 md:p-12 border border-black/[0.04]">
          <h3 class="font-serif-luxury text-2xl md:text-3xl text-[#121212] mb-2 font-normal">Detalles del proyecto</h3>
          <p class="text-xs text-[#6E6B66] font-light mb-10">Complete este breve formulario técnico para agilizar el proceso de cotización y reserva de espacios o modelos.</p>
          
          <form @submit.prevent="handleSubmit" class="space-y-8">
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-8">
              <div class="flex flex-col space-y-1">
                <label for="name" class="text-[10px] uppercase tracking-[0.15em] text-[#6E6B66] font-medium">Nombre o Empresa *</label>
                <input 
                  type="text" 
                  id="name" 
                  v-model="form.name" 
                  required 
                  class="bg-transparent border-b border-black/[0.15] py-2 text-sm focus:outline-none focus:border-black/60 transition-colors font-light text-[#121212]"
                />
              </div>
              <div class="flex flex-col space-y-1">
                <label for="email" class="text-[10px] uppercase tracking-[0.15em] text-[#6E6B66] font-medium">Correo Electrónico *</label>
                <input 
                  type="email" 
                  id="email" 
                  v-model="form.email" 
                  required 
                  class="bg-transparent border-b border-black/[0.15] py-2 text-sm focus:outline-none focus:border-black/60 transition-colors font-light text-[#121212]"
                />
              </div>
            </div>

            <div class="flex flex-col space-y-1">
              <label for="subject" class="text-[10px] uppercase tracking-[0.15em] text-[#6E6B66] font-medium">Asunto / Naturaleza del encargo</label>
              <input 
                type="text" 
                id="subject" 
                v-model="form.subject" 
                placeholder="Ej: Contratación de Modelos, Producción Audiovisual..." 
                class="bg-transparent border-b border-black/[0.15] py-2 text-sm focus:outline-none focus:border-black/60 transition-colors font-light text-[#121212] placeholder:text-black/[0.25]"
              />
            </div>

            <div class="flex flex-col space-y-1 pt-2">
              <label for="message" class="text-[10px] uppercase tracking-[0.15em] text-[#6E6B66] font-medium">Mensaje y Briefing Preliminar *</label>
              <textarea 
                id="message" 
                v-model="form.message" 
                rows="5" 
                required 
                class="bg-transparent border-b border-black/[0.15] py-2 text-sm focus:outline-none focus:border-black/60 transition-colors font-light text-[#121212] resize-none line-height-relaxed"
                placeholder="Describa brevemente los requisitos del proyecto, fechas estimadas y perfiles requeridos..."
              ></textarea>
            </div>

            <div class="pt-4">
              <button 
                type="submit" 
                class="block w-full text-center text-[10px] font-medium tracking-[0.3em] uppercase text-[#FAF9F6] bg-[#121212] py-4 transition-all duration-300 active:scale-[0.99] hover:bg-[#121212]/90"
              >
                Enviar Solicitud
              </button>
            </div>
          </form>
        </div>

      </main>

      <section class="mt-24 md:mt-32 pt-16 border-t border-black/[0.08]">
        <div class="max-w-2xl mb-10">
          <span class="text-eyebrow text-[#B0A89A]">Presencia</span>
          <h2 class="font-serif-luxury text-2xl md:text-3xl text-[#121212] mt-2 mb-4 font-normal">
            Nuestro Estudio Central
          </h2>
          <p class="text-body-editorial text-sm">
            Nos encontramos en el corazón de Granada. Si tiene una cita programada o desea visitarnos para coordinar un briefing presencial, le esperamos en nuestro espacio de trabajo.
          </p>
        </div>

        <div class="w-full border border-black/[0.06] bg-[#F0EDE8] overflow-hidden aspect-[16/9] md:aspect-[21/9]">
          <iframe 
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.1729606132334!2d-3.6046522!3d37.1724036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd71fce0d1c9aa69%3A0x6bda19da568c07e0!2sC.%20Recogidas%2C%20Centro%2C%20Granada!5e0!3m2!1ses!2ses!4v1710000000000!5m2!1ses!2ses" 
            width="100%" 
            height="100%" 
            style="border:0;" 
            allowfullscreen="" 
            loading="lazy" 
            referrerpolicy="no-referrer-when-downgrade"
            class="w-full h-full brightness-[0.95] opacity-80 hover:opacity-100 transition-opacity duration-500"
          ></iframe>
        </div>
      </section>

    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  subject: '',
  message: ''
})

const handleSubmit = () => {
  console.log('Formulario enviado:', form.value)
  alert('Gracias por su mensaje. Nos pondremos en contacto a la mayor brevedad.')
  form.value = { name: '', email: '', subject: '', message: '' }
}
</script>

<style scoped>
.page-contacto {
  animation: pageFadeIn 1s cubic-bezier(0.16, 1, 0.3, 1) both;
}

@keyframes pageFadeIn {
  from { opacity: 0; }
  to   { opacity: 1; }
}
</style>