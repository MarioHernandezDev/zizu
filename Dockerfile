# Usamos la versión LTS de Node en Alpine Linux (muy ligera)
FROM node:20-alpine

# Creamos el directorio de trabajo dentro del contenedor
WORKDIR /src

# Copiamos los archivos de dependencias primero para aprovechar la caché de Docker
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto de los archivos del proyecto
COPY . .

# Exponemos el puerto por defecto de Nuxt (3000)
EXPOSE 3000

# Comando para arrancar la aplicación en modo desarrollo
CMD ["npm", "run", "dev"]