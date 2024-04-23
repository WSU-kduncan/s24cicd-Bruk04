docker stop myProj4App
docker remove myProj4App

# If I completed Proj 4, I could reference a real image on dockerhub, but I cannot 
docker pull bruk04/<myNewApp:latest>

docker run -d --name myProj4App --restart always Bruk04/<myNewApp:latest>
