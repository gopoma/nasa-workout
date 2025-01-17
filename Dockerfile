# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias
COPY requirements.txt requirements.txt

# Instalar las dependencias dentro del contenedor
RUN pip install -r requirements.txt

# Copiar el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000

# Definir el comando para iniciar la aplicación
CMD ["python", "app.py"]
