<template>
  <div class="page">

    <section class="hero-full">
      <div class="hero-full__bg" aria-hidden="true">
        <img 
          src="https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?q=80&w=930&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" 
          alt="Zizu Studio Editorial" 
          loading="eager"
        />
        <div class="hero-full__overlay"></div>
      </div>

      <div class="hero-full__content">
        <h1 class="hero-full__title">
          Zizu <span class="hero-full__title-serif">Studio</span>
        </h1>
        
        <NuxtLink to="/casting" class="hero-full__button">
          <span class="hero-full__button-bg"></span>
          <span class="hero-full__button-text">
            Solicitar plaza 
            <span class="hero-full__button-arrow" aria-hidden="true">→</span>
          </span>
        </NuxtLink>
      </div>

      <div class="hero-full__rule" aria-hidden="true"></div>
    </section>

    <section class="welcome">
      <div class="welcome__bg" aria-hidden="true">
        <img src="https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1920&auto=format&fit=crop" alt="" />
      </div>
      
      <div class="welcome__container">
        <div class="welcome__inner">
          <div class="welcome__eyebrow">Bienvenidos a Zizú Estudio</div>
          <h2 class="welcome__title">
            Tu desarrollo como modelo,<br class="hidden md:block">
            con todo lo que necesitas.
          </h2>
          <p class="welcome__body">
            Si quieres crecer como modelo de manera profesional y con todo el material
            que necesitas, este es tu lugar. En Zizú Estudio apostamos por planes anuales
            pensados para acompañarte durante todo el año, con seguimiento continuo
            y acceso a oportunidades reales dentro de nuestra agencia.
          </p>
        </div>
      </div>
    </section>

    <section class="plans">
      <div class="plans__inner">

        <article class="plan plan--basic">
          <div class="plan__image-holder">
            <img src="https://images.unsplash.com/photo-1509631179647-0177331693ae?q=80&w=800&auto=format&fit=crop" alt="Polaroids / Scouting" />
          </div>
          
          <div class="plan__content">
            <header class="plan__head">
              <span class="plan__label">Plan básico</span>
              <div class="plan__price">
                <span class="plan__amount">190€</span>
                <span class="plan__period">/ año + IVA</span>
              </div>
              <p class="plan__billing">Pago único anual · fraccionable hasta 3 pagos</p>
            </header>

            <ul class="plan__features" role="list">
              <li>Polas profesionales — se renuevan a los 6 meses o ante cualquier cambio físico notable</li>
              <li>Composite digital</li>
              <li>Difusión y visibilización en redes</li>
              <li>Inclusión en la bolsa de trabajo</li>
              <li>Acceso a castings</li>
              <li>Acceso a proyectos exclusivos de Zizú Estudio</li>
            </ul>

            <NuxtLink to="/casting" class="plan__cta">Empezar con básico</NuxtLink>
          </div>
        </article>

        <article class="plan plan--full">
          <div class="plan__image-holder">
            <img src="https://images.unsplash.com/photo-1512436991641-6745cdb1723f?q=80&w=800&auto=format&fit=crop" alt="Test Shoot / High Fashion" />
          </div>

          <div class="plan__content">
            <header class="plan__head">
              <span class="plan__label">Plan completo</span>
              <div class="plan__price">
                <span class="plan__amount">270€</span>
                <span class="plan__period">/ año + IVA</span>
              </div>
              <p class="plan__billing">Pago único anual · fraccionable hasta 3 pagos</p>
            </header>

            <ul class="plan__features" role="list">
              <li>Polas profesionales — se renuevan a los 6 meses o ante cualquier cambio físico notable</li>
              <li>Composite digital</li>
              <li>Difusión y visibilización en redes</li>
              <li>Inclusión en la bolsa de trabajo</li>
              <li>Acceso a castings</li>
              <li>Acceso a proyectos exclusivos de Zizú Estudio</li>
              <li class="plan__feature--extra">Test shoot en exteriores</li>
              <li class="plan__feature--extra">Maquillaje profesional incluido</li>
              <li class="plan__feature--extra">Composite físico</li>
              <li class="plan__feature--extra">Portfolio digital completo</li>
            </ul>

            <p class="plan__note">
              Pensado para quienes buscan una imagen más sólida y profesional desde el inicio.
            </p>

            <NuxtLink to="/casting" class="plan__cta plan__cta--inv">Empezar con completo</NuxtLink>
          </div>
        </article>

      </div>
    </section>

    <section class="urgency">
      <div class="urgency__inner">
        <p class="urgency__text">
          Quedan <strong>2 plazas</strong>. Cuando se llenen, cerramos la convocatoria hasta el próximo año.
        </p>
        <NuxtLink to="/casting" class="urgency__link">
          Reservar mi plaza <span aria-hidden="true">→</span>
        </NuxtLink>
      </div>
    </section>

  </div>
</template>

<script setup>
useSeoMeta({
  title: 'Zizú Estudio — Agencia de modelos',
  description: 'Planes anuales para modelos profesionales. Quedan 2 plazas disponibles.',
})
</script>

<style scoped>
/* ── Tokens ───────────────────────────────────────────────────── */
:root {
  --cream:   #FAF9F6;
  --ink:     #121212;
  --deep:    #2C2C2A;
  --mid:     #6E6B66;
  --muted:   #B0A89A;
  --surface: #F0EDE8;
  --line:    rgba(18,18,18,0.07);
}

/* ── Base ─────────────────────────────────────────────────────── */
.page {
  background: #FAF9F6;
  color: #121212;
  font-family: 'Inter', system-ui, sans-serif;
  font-weight: 300;
}

/* ── Hero Pantalla Completa Minimalista Avanzado ──────────────── */
.hero-full {
  position: relative;
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  background: #121212;
}

.hero-full__bg {
  position: absolute;
  inset: 0;
  z-index: 0;
}

.hero-full__bg img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  filter: grayscale(100%) contrast(1.08);
}

.hero-full__overlay {
  position: absolute;
  inset: 0;
  background: linear-gradient(to bottom, rgba(18,18,18,0.45), rgba(18,18,18,0.65));
}

.hero-full__content {
  position: relative;
  z-index: 10;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 56px;
  padding: 0 32px;
  animation: fadeUp 1.4s cubic-bezier(0.16, 1, 0.3, 1) both;
}

/* Nueva tipografía estilo Editorial de Moda / Didone */
.hero-full__title {
  color: #FAF9F6;
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: clamp(48px, 8.5vw, 100px);
  font-weight: 300;
  letter-spacing: 0.22em; /* Espaciado masivo para impacto visual */
  text-transform: uppercase;
  line-height: 1.1;
  margin: 0;
}

.hero-full__title-serif {
  font-weight: 300;
  font-style: italic;
  text-transform: none;
  letter-spacing: 0.05em;
  color: rgba(250, 249, 246, 0.85);
}

/* Botón de Alta Gama Estilo Pasarela */
.hero-full__button {
  position: relative;
  display: inline-block;
  font-size: 11px;
  font-weight: 400;
  letter-spacing: 0.4em;
  text-transform: uppercase;
  color: #FAF9F6;
  text-decoration: none;
  padding: 20px 52px;
  border: 1px solid rgba(250, 249, 246, 0.3);
  overflow: hidden;
  transition: color 0.5s cubic-bezier(0.19, 1, 0.22, 1), border-color 0.5s;
}

/* Fondo oculto que barre hacia arriba en hover */
.hero-full__button-bg {
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  height: 100%;
  background: #FAF9F6;
  z-index: 1;
  transition: top 0.5s cubic-bezier(0.19, 1, 0.22, 1);
}

.hero-full__button-text {
  position: relative;
  z-index: 2;
  display: flex;
  align-items: center;
  gap: 12px;
}

.hero-full__button-arrow {
  transition: transform 0.5s cubic-bezier(0.19, 1, 0.22, 1);
}

/* Efectos Hover Potentes */
.hero-full__button:hover {
  color: #121212;
  border-color: #FAF9F6;
}

.hero-full__button:hover .hero-full__button-bg {
  top: 0;
}

.hero-full__button:hover .hero-full__button-arrow {
  transform: translateX(6px);
}

.hero-full__rule {
  position: absolute;
  bottom: 0;
  left: 32px; /* Alineación perfecta con px-8 en móvil */
  right: 32px;
  height: 0.5px;
  background: rgba(254,249,246,0.12);
  z-index: 5;
}

/* ── Welcome (Fondo texturizado) ──────────────────────────────── */
/* ── Welcome (Corregido a pantalla completa) ─────────────────── */
.welcome {
  position: relative;
  width: 100%;
  background: #FAF9F6; /* Mismo fondo que la web para evitar saltos tonales */
  padding: 140px 0;
  overflow: hidden;
}

.welcome__bg {
  position: absolute;
  inset: 0;
  z-index: 0;
  opacity: 0.04; /* Mantener la textura muy sutil */
  pointer-events: none;
}

.welcome__bg img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  filter: grayscale(100%);
}

/* Caja contenedora que hereda los márgenes del Nav y de los Planes */
.welcome__container {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 32px; /* Alineado con px-8 en móviles */
  position: relative;
  z-index: 1;
}

/* El bloque de texto interno se alinea a la izquierda de esa caja */
.welcome__inner {
  max-width: 760px; /* Evita que las líneas de texto sean infinitas y cansen la vista */
  text-align: left;
}

.welcome__eyebrow {
  font-size: 10px;
  letter-spacing: 0.32em;
  text-transform: uppercase;
  color: #B0A89A;
  margin-bottom: 28px;
}

.welcome__title {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: clamp(32px, 4.5vw, 52px);
  font-weight: 300;
  line-height: 1.2;
  color: #121212;
  margin-bottom: 32px;
  letter-spacing: 0.02em;
}

.welcome__body {
  font-size: 16px;
  line-height: 1.8;
  color: #6E6B66;
  font-weight: 300;
}

/* ── Ajustes de Cohesión en Escritorio (Alineación con md:px-14) ── */
@media (min-width: 769px) {
  .welcome {
    padding: 160px 0;
  }
  .welcome__container {
    padding: 0 56px; /* Sincronizado milimétricamente con md:px-14 */
  }
}

@media (max-width: 768px) {
  .welcome {
    padding: 100px 0;
  }
  .welcome__container {
    padding: 0 32px;
  }
}

/* ── Plans (Añadidas imágenes de cabecera) ───────────────────── */
.plans {
  padding: 0 32px 140px;
  max-width: 1280px;
  margin: 0 auto;
}

.plans__inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 32px;
}

.plan {
  display: flex;
  flex-direction: column;
  background: #FAF9F6;
  border: 0.5px solid rgba(18,18,18,0.08);
  overflow: hidden;
  transition: transform 0.4s ease, box-shadow 0.4s ease;
}

.plan:hover {
  transform: translateY(-4px);
  box-shadow: 0 20px 40px rgba(0,0,0,0.02);
}

.plan--full {
  background: #F0EDE8;
}

.plan__image-holder {
  width: 100%;
  height: 240px;
  overflow: hidden;
  border-bottom: 0.5px solid rgba(18,18,18,0.08);
}

.plan__image-holder img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  filter: grayscale(100%) contrast(1.02);
  transition: transform 0.8s ease;
}

.plan:hover .plan__image-holder img {
  transform: scale(1.04);
}

.plan__content {
  padding: 48px;
  display: flex;
  flex-direction: column;
  flex-grow: 1;
}

.plan__head {
  margin-bottom: 40px;
  padding-bottom: 40px;
  border-bottom: 0.5px solid rgba(18,18,18,0.08);
}

.plan__label {
  display: block;
  font-size: 10px;
  letter-spacing: 0.32em;
  text-transform: uppercase;
  color: #B0A89A;
  margin-bottom: 24px;
}

.plan__price {
  display: flex;
  align-items: baseline;
  gap: 8px;
  margin-bottom: 10px;
}

.plan__amount {
  font-family: 'Playfair Display', 'Didot', 'Bodoni MT', serif;
  font-size: 58px;
  font-weight: 300;
  color: #121212;
  line-height: 1;
  letter-spacing: -0.01em;
}

.plan__period {
  font-size: 13px;
  color: #B0A89A;
  font-weight: 300;
}

.plan__billing {
  font-size: 11px;
  color: #B0A89A;
  letter-spacing: 0.04em;
  font-weight: 300;
}

.plan__features {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 14px;
  flex-grow: 1;
  margin-bottom: 40px;
}

.plan__features li {
  font-size: 14px;
  color: #6E6B66;
  font-weight: 300;
  line-height: 1.5;
  padding-left: 18px;
  position: relative;
}

.plan__features li::before {
  content: '—';
  position: absolute;
  left: 0;
  color: #C0B8B0;
  font-size: 11px;
  top: 2px;
}

.plan__feature--extra {
  color: #2C2C2A !important;
}

.plan__feature--extra::before {
  color: #121212 !important;
}

.plan__note {
  font-style: italic;
  line-height: 1.6;
  margin-bottom: 32px;
  font-family: 'Playfair Display', 'Didot', serif;
  font-size: 15px;
  font-weight: 300;
  color: #B0A89A;
}

.plan__cta {
  display: block;
  text-align: center;
  font-size: 10px;
  letter-spacing: 0.28em;
  text-transform: uppercase;
  text-decoration: none;
  padding: 15px 24px;
  border: 0.5px solid rgba(18,18,18,0.25);
  color: #121212;
  transition: all 0.3s;
  align-self: stretch;
}

.plan__cta:hover {
  background: #121212;
  color: #FAF9F6;
  border-color: #121212;
}

.plan__cta--inv {
  background: #121212;
  color: #FAF9F6;
  border-color: #121212;
}

.plan__cta--inv:hover {
  background: transparent;
  color: #121212;
}

/* ── Urgency strip ────────────────────────────────────────────── */
.urgency {
  border-top: 0.5px solid rgba(18,18,18,0.07);
  padding: 48px 32px;
  max-width: 1280px;
  margin: 0 auto;
}

.urgency__inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 32px;
}

.urgency__text {
  font-size: 14px;
  color: #6E6B66;
  font-weight: 300;
  line-height: 1.6;
}

.urgency__text strong {
  color: #121212;
  font-weight: 400;
}

.urgency__link {
  flex-shrink: 0;
  font-size: 10px;
  letter-spacing: 0.28em;
  text-transform: uppercase;
  color: #121212;
  text-decoration: none;
  display: flex;
  align-items: center;
  gap: 10px;
  transition: gap 0.3s cubic-bezier(0.16,1,0.3,1);
}

.urgency__link:hover { gap: 16px; }

/* ── Ajustes de Cohesión y Medias queries Escritorio (md:px-14) ── */
@media (min-width: 769px) {
  .hero-full__rule {
    left: 56px;
    right: 56px;
  }
  
  .welcome {
    padding: 160px 56px;
  }
  
  .plans {
    padding: 0 56px 160px;
  }
  
  .urgency {
    padding: 56px 56px;
  }
}

/* ── Responsive Dispositivos Móviles y Tablets ── */
@media (max-width: 1024px) {
  .plans__inner {
    grid-template-columns: 1fr;
    gap: 32px;
  }
}

@media (max-width: 768px) {
  .hero-full__rule {
    left: 32px;
    right: 32px;
  }
  .hero-full__button {
    padding: 18px 36px;
    letter-spacing: 0.3em;
  }

  .welcome {
    padding: 100px 32px;
  }

  .plans {
    padding: 0 32px 100px;
  }

  .plan__content {
    padding: 40px 24px;
  }

  .urgency {
    padding: 48px 32px;
  }

  .urgency__inner {
    flex-direction: column;
    align-items: flex-start;
    gap: 24px;
  }

  .br-d { display: none; }
}

/* ── Animaciones de entrada ───────────────────────────────────── */
@keyframes fadeUp {
  from { opacity: 0; transform: translateY(20px); }
  to   { opacity: 1; transform: translateY(0); }
}

@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition-duration: 0.01ms !important; }
}
</style>