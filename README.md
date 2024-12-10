## fatmandelbrot

A `Dockerfile` to generate large docker images.
It is built on top of the Mandelbrot set generator microservice.

#### How to build the image
```
docker build --build-arg GIGABYTES=5 -t foo .
```
The `GIGABYTES` parameter specifies how many extra gigabytes one wants to add to the image. If not specified, it defaults to `1`

#### How to run the image
```
docker run -p 8080:80 foo
```
Access the Mandelbrot set generator microservice with the browser on port `8080`.

The image should still be fully functional, regardless how many extra gigabytes added to it.