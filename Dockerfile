
# Usa la imagen de Node.js 20
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto Angular al contenedor
COPY . .

# Instala las dependencias del proyecto
RUN npm install


# Expone el puerto 80 para que la aplicación Angular sea accesible desde fuera del contenedor
EXPOSE 4200

# Comando para iniciar la aplicación Angular
CMD ["npm", "start"]