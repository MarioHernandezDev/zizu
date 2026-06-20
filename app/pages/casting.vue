<template>
  <div class="page-casting">
    <div class="layout-container">

      <MiniHero
        eyebrow="Casting Abierto"
        title="Forma parte de Zizu"
        description="Buscamos rostros y perfiles singulares en Granada y Málaga. No nos importan las medidas estándar ni las restricciones convencionales; nos importa tu expresión, tu actitud y tu verdad frente a la cámara. Si quieres trabajar en proyectos editoriales, publicitarios o rodajes con nosotros, envíanos tu propuesta."
      />

      <section class="guide" aria-labelledby="guide-title">
        <div class="grid lg:grid-cols-12 gap-12 items-center">
          
          <div class="lg:col-span-5 guide__head">
            <span class="text-eyebrow">La guía rápida</span>
            <h2 id="guide-title" class="guide__title">Cómo hacerte tus polaroids</h2>
            <p class="guide__intro mb-8">
              Sabemos que da vértigo mandar fotos sin saber qué se espera. No hace falta producción ni equipo profesional — solo luz natural, sinceridad y un teléfono móvil.
            </p>
            
            <div class="space-y-6">
              <article v-for="(rule, i) in guideRules" :key="rule.title" class="border-b border-black/[0.06] pb-4">
                <div class="flex items-baseline gap-3">
                  <span class="guide__mark" aria-hidden="true">{{ String(i + 1).padStart(2, '0') }}</span>
                  <h3 class="guide__item-title">{{ rule.title }}</h3>
                </div>
                <p class="guide__item-body mt-2 pl-7">{{ rule.body }}</p>
              </article>
            </div>
          </div>

          <div class="lg:col-span-7 grid grid-cols-12 gap-4 aspect-[4/3] bg-[#F0EDE8]/40 p-4 border border-black/[0.04]">
            <div class="col-span-6 bg-[#FAF9F6] border border-black/[0.05] overflow-hidden relative group">
              <img src="/img/models/default-model.jpg" alt="Ejemplo Primer Plano" class="w-full h-full object-cover filter grayscale contrast-[1.05]" />
              <span class="absolute bottom-3 left-3 text-[9px] uppercase tracking-widest bg-white/90 px-2 py-1">01. Primer Plano</span>
            </div>
            <div class="col-span-6 grid grid-rows-2 gap-4">
              <div class="bg-[#FAF9F6] border border-black/[0.05] overflow-hidden relative">
                <img src="/img/models/default-model.jpg" alt="Ejemplo Perfil" class="w-full h-full object-cover filter grayscale contrast-[1.05]" />
                <span class="absolute bottom-3 left-3 text-[9px] uppercase tracking-widest bg-white/90 px-2 py-1">02. Perfil</span>
              </div>
              <div class="bg-[#FAF9F6] border border-black/[0.05] overflow-hidden relative">
                <img src="/img/models/default-model.jpg" alt="Ejemplo Cuerpo Entero" class="w-full h-full object-cover filter grayscale contrast-[1.05]" />
                <span class="absolute bottom-3 left-3 text-[9px] uppercase tracking-widest bg-white/90 px-2 py-1">03. Cuerpo Entero</span>
              </div>
            </div>
          </div>

        </div>
      </section>

      <section class="form-section" aria-labelledby="form-title">
        <div class="grid lg:grid-cols-12 gap-12 md:gap-16 items-start">
          
          <div class="lg:col-span-4 lg:sticky lg:top-[140px] space-y-6">
            <span class="text-eyebrow">Inscripción</span>
            <h2 id="form-title" class="form-section__title !mt-0">Cuéntanos quién eres</h2>
            <p class="text-xs text-[#6E6B66] font-light line-height-relaxed max-w-sm">
              Complete los bloques informativos de la derecha de forma honesta. Tómese su tiempo. Nuestro equipo de asignación evalúa cada portfolio individualmente.
            </p>
            <div class="hidden lg:block bg-[#F0EDE8] aspect-[3/4] overflow-hidden border border-black/[0.04]">
              <img src="/img/models/default-model.jpg" alt="Zizu Casting" class="w-full h-full object-cover filter grayscale opacity-70 contrast-[1.01]" />
            </div>
          </div>

          <div class="lg:col-span-8 bg-[#F0EDE8]/30 p-6 md:p-10 border border-black/[0.04]">
            <form class="casting-form" @submit.prevent="handleSubmit">

              <fieldset class="form-block">
                <legend class="form-block__legend">
                  <span class="form-block__num">01</span> Datos personales
                </legend>

                <div class="field-grid">
                  <div class="field">
                    <label class="field__label" for="nombre">Nombre y apellidos *</label>
                    <input id="nombre" v-model="form.nombre" type="text" required class="field__input" autocomplete="name" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="nacimiento">Fecha de nacimiento *</label>
                    <input id="nacimiento" v-model="form.nacimiento" type="date" required class="field__input" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="email">Email *</label>
                    <input id="email" v-model="form.email" type="email" required class="field__input" autocomplete="email" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="instagram">Cuenta de Instagram *</label>
                    <input id="instagram" v-model="form.instagram" type="text" required class="field__input" placeholder="@usuario" />
                  </div>
                  <div class="field field--full">
                    <label class="field__label" for="ciudad">Ciudad de Residencia *</label>
                    <select id="ciudad" v-model="form.ciudad" required class="field__input field__input--select">
                      <option value="" disabled>Selecciona tu ciudad</option>
                      <option value="granada">Granada</option>
                      <option value="malaga">Málaga</option>
                      <option value="otra">Otra</option>
                    </select>
                    <p class="field__hint">De momento solamente vamos a trabajar con modelos de Granada.</p>
                  </div>
                </div>
              </fieldset>

              <fieldset class="form-block">
                <legend class="form-block__legend">
                  <span class="form-block__num">02</span> Archivos gráficos (Polaroids)
                </legend>
                <p class="text-xs text-[#6E6B66] font-light mb-6">Por favor, adjunte las imágenes siguiendo las pautas de nuestra guía rápida superior.</p>
                
                <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                  <div class="border border-dashed border-black/20 hover:border-black/60 transition-colors p-6 text-center flex flex-col items-center justify-center bg-white/50 aspect-[3/4]">
                    <span class="text-[10px] font-medium tracking-widest uppercase mb-1">Primer Plano</span>
                    <span class="text-[9px] text-[#B0A89A] mb-4">JPG o PNG</span>
                    <input type="file" required class="text-[10px] w-full text-center file:hidden cursor-pointer" />
                  </div>
                  <div class="border border-dashed border-black/20 hover:border-black/60 transition-colors p-6 text-center flex flex-col items-center justify-center bg-white/50 aspect-[3/4]">
                    <span class="text-[10px] font-medium tracking-widest uppercase mb-1">Perfil</span>
                    <span class="text-[9px] text-[#B0A89A] mb-4">JPG o PNG</span>
                    <input type="file" required class="text-[10px] w-full text-center file:hidden cursor-pointer" />
                  </div>
                  <div class="border border-dashed border-black/20 hover:border-black/60 transition-colors p-6 text-center flex flex-col items-center justify-center bg-white/50 aspect-[3/4]">
                    <span class="text-[10px] font-medium tracking-widest uppercase mb-1">Cuerpo Entero</span>
                    <span class="text-[9px] text-[#B0A89A] mb-4">JPG o PNG</span>
                    <input type="file" required class="text-[10px] w-full text-center file:hidden cursor-pointer" />
                  </div>
                </div>
              </fieldset>

              <fieldset class="form-block">
                <legend class="form-block__legend">
                  <span class="form-block__num">03</span> Tu perfil y medidas
                </legend>

                <div class="field-grid">
                  <div class="field field--full">
                    <span class="field__label">¿Tienes experiencia modelando? *</span>
                    <div class="toggle-pair" role="radiogroup">
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.experiencia === true }" @click="form.experiencia = true">Sí</button>
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.experiencia === false }" @click="form.experiencia = false; form.experienciaDetalle = ''">No</button>
                    </div>
                  </div>

                  <Transition name="expand">
                    <div v-if="form.experiencia === true" class="field field--full">
                      <label class="field__label" for="experienciaDetalle">Cuéntanos tu experiencia *</label>
                      <textarea id="experienciaDetalle" v-model="form.experienciaDetalle" required rows="3" class="field__input field__input--textarea"></textarea>
                    </div>
                  </Transition>

                  <div class="field">
                    <label class="field__label" for="altura">Altura (cm) *</label>
                    <input id="altura" v-model="form.medidas_altura" type="text" placeholder="Ej. 174" required class="field__input" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="pecho">Pecho (cm) *</label>
                    <input id="pecho" v-model="form.medidas_pecho" type="text" placeholder="Ej. 85" required class="field__input" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="cintura">Cintura (cm) *</label>
                    <input id="cintura" v-model="form.medidas_cintura" type="text" placeholder="Ej. 62" required class="field__input" />
                  </div>
                  <div class="field">
                    <label class="field__label" for="cadera">Cadera (cm) *</label>
                    <input id="cadera" v-model="form.medidas_cadera" type="text" placeholder="Ej. 90" required class="field__input" />
                  </div>

                  <div class="field field--full">
                    <label class="field__label" for="alergias">¿Alguna alergia? *</label>
                    <input id="alergias" v-model="form.alergias" type="text" required class="field__input" placeholder="Si no tienes ninguna, indícalo" />
                  </div>
                  <div class="field field--full">
                    <label class="field__label" for="ocupacion">¿Estudias o trabajas? Cuéntanos *</label>
                    <textarea id="ocupacion" v-model="form.ocupacion" required rows="2" class="field__input field__input--textarea"></textarea>
                  </div>
                </div>
              </fieldset>

              <fieldset class="form-block">
                <legend class="form-block__legend">
                  <span class="form-block__num">04</span> Condiciones y plan
                </legend>

                <div class="field-grid">
                  <div class="field">
                    <span class="field__label">¿Proyectos remunerados? *</span>
                    <div class="toggle-pair" role="radiogroup">
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.remunerados === true }" @click="form.remunerados = true">Sí</button>
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.remunerados === false }" @click="form.remunerados = false">No</button>
                    </div>
                  </div>
                  <div class="field">
                    <span class="field__label">¿Vehículo propio? *</span>
                    <div class="toggle-pair" role="radiogroup">
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.vehiculo === true }" @click="form.vehiculo = true">Sí</button>
                      <button type="button" class="toggle-pill" :class="{ 'toggle-pill--active': form.vehiculo === false }" @click="form.vehiculo = false">No</button>
                    </div>
                  </div>

                  <div class="field field--full">
                    <span class="field__label">¿Qué plan anual te interesa? *</span>
                    <div class="plan-pair" role="radiogroup">
                      <button type="button" class="plan-pill" :class="{ 'plan-pill--active': form.plan === 'basico' }" @click="form.plan = 'basico'">
                        <span class="plan-pill__name">Plan básico</span>
                        <span class="plan-pill__price">190€ + IVA / año</span>
                      </button>
                      <button type="button" class="plan-pill" :class="{ 'plan-pill--active': form.plan === 'completo' }" @click="form.plan = 'completo'">
                        <span class="plan-pill__name">Plan completo</span>
                        <span class="plan-pill__price">270€ + IVA / año</span>
                      </button>
                    </div>
                  </div>
                </div>
              </fieldset>

              <div class="form-submit pt-4">
                <button type="submit" class="submit-btn w-full justify-center">
                  <span class="submit-btn__text">Enviar mi solicitud</span>
                  <span class="submit-btn__arrow" aria-hidden="true">→</span>
                </button>
              </div>

            </form>
          </div>

        </div>
      </section>

      <section class="faq" aria-labelledby="faq-title">
        <div class="faq__head">
          <span class="text-eyebrow">Antes de enviar</span>
          <h2 id="faq-title" class="faq__title">Preguntas frecuentes</h2>
        </div>
        <div class="faq__list">
          <div v-for="(item, i) in faqs" :key="i" class="faq__item">
            <button class="faq__question" :aria-expanded="openFaq === i" @click="openFaq = openFaq === i ? null : i">
              <span>{{ item.q }}</span>
              <span class="faq__icon" :class="{ 'faq__icon--open': openFaq === i }">+</span>
            </button>
            <Transition name="expand">
              <p v-if="openFaq === i" class="faq__answer">{{ item.a }}</p>
            </Transition>
          </div>
        </div>
      </section>

    </div>
  </div>
</template>

<script setup>
import { reactive, ref } from 'vue'

useSeoMeta({
  title: 'Casting — Zizu Studio',
  description: 'Inscríbete en nuestro casting abierto en Granada y Málaga. Sin restricciones de medidas ni experiencia previa.',
})

const guideRules = [
  { title: 'Luz natural', body: 'Hazte las fotos de día, frente a una ventana, evitando luces artificiales o amarillas.' },
  { title: 'Fondo neutro', body: 'Busca una pared lisa, preferiblemente blanca, crema o gris claro.' },
  { title: 'Sin filtros', body: 'Queremos verte tal y como eres. Evita filtros de redes sociales, gorras o maquillaje pesado.' },
  { title: 'Vestimenta simple', body: 'Ropa básica. Una camiseta lisa (blanca o negra) y unos vaqueros son perfectos.' },
]

const faqs = [
  { q: '¿Necesito experiencia previa?', a: 'No. Valoramos la frescura y la fotogenia natural por encima de la experiencia.' },
  { q: '¿Hay algún coste por inscribirme?', a: 'Absolutamente ninguno. Zizu Agency nunca cobrará a un aspirante por formar parte de su portfolio o realizar un casting.' },
  { q: '¿Cuándo recibiré respuesta?', a: 'Nuestro equipo revisa todas las solicitudes semanalmente. Si tu perfil encaja en alguna asignación, nos comunicaremos en un plazo máximo de 15 días.' },
]

const openFaq = ref(null)

const form = reactive({
  nombre: '',
  nacimiento: '',
  email: '',
  instagram: '',
  ciudad: '',
  experiencia: null,
  experienciaDetalle: '',
  medidas_altura: '',
  medidas_pecho: '',
  medidas_cintura: '',
  medidas_cadera: '',
  alergias: '',
  ocupacion: '',
  remunerados: null,
  vehiculo: null,
  plan: '',
})

function handleSubmit() {
  console.log('Formulario de casting enviado con éxito:', { ...form })
}
</script>

<style scoped>
/* ── Layout base ─────────────────── */
.page-casting {
  background: #FAF9F6;
  color: #121212;
  font-family: 'Inter', system-ui, sans-serif;
  font-weight: 300;
  padding-top: 160px;
  padding-bottom: 140px;
}

.layout-container {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 32px;
}

@media (min-width: 769px) {
  .layout-container { padding: 0 56px; }
}

.text-eyebrow {
  display: block;
  font-size: 10px;
  letter-spacing: 0.32em;
  text-transform: uppercase;
  color: #121212;
  font-weight: 500;
}

/* ── Guía de polaroids ────────────────────────────────────────── */
.guide {
  margin-bottom: 120px;
  padding-top: 64px;
  border-top: 0.5px solid rgba(18,18,18,0.08);
}

.guide__title {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: clamp(28px, 3.5vw, 40px);
  font-weight: 300;
  line-height: 1.2;
  color: #121212;
  margin: 16px 0 20px;
  letter-spacing: 0.01em;
}

.guide__intro {
  font-size: 15px;
  line-height: 1.8;
  color: #6E6B66;
  font-weight: 300;
}

.guide__mark {
  font-family: 'Playfair Display', 'Didot', serif;
  font-size: 13px;
  font-style: italic;
  color: #B0A89A;
  letter-spacing: 0.05em;
}

.guide__item-title {
  font-size: 13px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  font-weight: 500;
  color: #121212;
}

.guide__item-body {
  font-size: 13.5px;
  line-height: 1.7;
  color: #6E6B66;
  font-weight: 300;
}

/* ── Formulario Estilo Revista ────────────────────────────────────── */
.form-section {
  margin-bottom: 120px;
  border-top: 0.5px solid rgba(18,18,18,0.08);
  padding-top: 64px;
}

.form-section__title {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: clamp(28px, 3.2vw, 36px);
  font-weight: 300;
  line-height: 1.2;
  color: #121212;
  margin: 16px 0 0;
  letter-spacing: 0.01em;
}

.casting-form {
  display: flex;
  flex-direction: column;
  gap: 56px;
}

.form-block {
  border: none;
  margin: 0;
  padding: 0;
}

.form-block__legend {
  display: flex;
  align-items: baseline;
  gap: 14px;
  font-family: 'Playfair Display', 'Didot', serif;
  font-size: 18px;
  font-weight: 300;
  font-style: italic;
  color: #121212;
  margin-bottom: 28px;
  padding-bottom: 14px;
  border-bottom: 0.5px solid rgba(18,18,18,0.1);
  width: 100%;
}

.form-block__num {
  font-family: 'Inter', sans-serif;
  font-style: normal;
  font-size: 10px;
  letter-spacing: 0.2em;
  color: #B0A89A;
  font-weight: 500;
}

.field-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 24px 24px;
}

.field {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.field--full {
  grid-column: 1 / -1;
}

.field__label {
  font-size: 10px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: #6E6B66;
  font-weight: 500;
}

.field__input {
  font-family: 'Inter', sans-serif;
  font-size: 14px;
  font-weight: 300;
  color: #121212;
  background: transparent;
  border: none;
  border-bottom: 0.5px solid rgba(18,18,18,0.15);
  padding: 8px 2px;
  transition: border-color 0.3s ease;
  width: 100%;
}

.field__input:focus {
  outline: none;
  border-color: #121212;
}

.field__input--textarea {
  resize: none;
  border: none;
  border-b: 0.5px solid rgba(18,18,18,0.15);
  padding: 8px 2px;
}

.field__input--select {
  appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='6'%3E%3Cpath d='M1 1l4 4 4-4' stroke='%23121212' stroke-width='1' fill='none'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 4px center;
  cursor: pointer;
}

.field__hint {
  font-size: 11px;
  font-style: italic;
  color: #B0A89A;
  font-family: 'Playfair Display', serif;
  margin-top: 4px;
}

.toggle-pair {
  display: flex;
  gap: 10px;
}

.toggle-pill {
  font-family: 'Inter', sans-serif;
  font-size: 11px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  font-weight: 500;
  color: #6E6B66;
  background: transparent;
  border: 0.5px solid rgba(18,18,18,0.15);
  padding: 10px 24px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.toggle-pill--active {
  background: #121212;
  border-color: #121212;
  color: #FAF9F6;
}

.plan-pair {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.plan-pill {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: white;
  border: 0.5px solid rgba(18,18,18,0.15);
  padding: 16px 20px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.plan-pill--active {
  background: #121212;
  border-color: #121212;
}
.plan-pill--active .plan-pill__name,
.plan-pill--active .plan-pill__price {
  color: #FAF9F6;
}

.plan-pill__name {
  font-size: 12px;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  font-weight: 500;
  color: #121212;
}

.plan-pill__price {
  font-family: 'Playfair Display', serif;
  font-style: italic;
  font-size: 12px;
  color: #6E6B66;
}

/* Botón de Envíos */
.submit-btn {
  display: inline-flex;
  align-items: center;
  gap: 12px;
  font-family: 'Inter', sans-serif;
  font-size: 11px;
  font-weight: 500;
  letter-spacing: 0.32em;
  text-transform: uppercase;
  color: #FAF9F6;
  background: #121212;
  border: 1px solid #121212;
  padding: 18px 44px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.submit-btn:hover {
  background: transparent;
  color: #121212;
}

.submit-btn__arrow {
  transition: transform 0.3s ease;
}

.submit-btn:hover .submit-btn__arrow {
  transform: translateX(6px);
}

/* ── FAQ ──────────────────────────────────────────────────────── */
.faq {
  padding-top: 64px;
  border-top: 0.5px solid rgba(18,18,18,0.08);
}

.faq__title {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: clamp(28px, 3.5vw, 40px);
  font-weight: 300;
  line-height: 1.2;
  color: #121212;
  margin: 16px 0 0;
  letter-spacing: 0.01em;
}

.faq__list {
  max-width: 780px;
}

.faq__item {
  border-bottom: 0.5px solid rgba(18,18,18,0.1);
}

.faq__question {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  text-align: left;
  background: transparent;
  border: none;
  cursor: pointer;
  padding: 24px 2px;
  font-family: 'Playfair Display', 'Didot', serif;
  font-size: 17px;
  font-weight: 300;
  color: #121212;
}

.faq__icon {
  font-size: 16px;
  color: #B0A89A;
  transition: transform 0.4s ease;
}

.faq__icon--open {
  transform: rotate(135deg);
  color: #121212;
}

.faq__answer {
  font-size: 14px;
  line-height: 1.8;
  color: #6E6B66;
  padding: 0 2px 24px;
}

/* Transición expand */
.expand-enter-active,
.expand-leave-active {
  transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
  overflow: hidden;
}

.expand-enter-from,
.expand-leave-to {
  opacity: 0;
  max-height: 0;
}

.expand-enter-to,
.expand-leave-from {
  opacity: 1;
  max-height: 300px;
}
</style>