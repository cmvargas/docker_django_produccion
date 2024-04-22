docker build -t docker_django_produccion_ejemplo .
# Cuando se conecta a una base de datos local en otro contenedor
docker run -d -v D:\proyectos\docker_django_produccion:/app -p 8000:8000 --network postgresql_produccion_django docker_django_produccion_ejemplo

# cuando se conecta a una base de datos en la nube
docker run -d -v D:\proyectos\docker_django_produccion:/app -p 8000:8000 docker_django_produccion_ejemplo