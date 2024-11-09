$${\color{orange}Heisenberg \space \space \color{Red}Docker \space \space Image \space \space project}$$

This project is a tutoriel to understand docker image, container and how to make an image accecible in public
![image](https://github.com/user-attachments/assets/ea8483cd-e583-4d74-87eb-474ca3584763)  




##

### $\textsf{\color{#5bc0de}{• Docker Host:}}$
Is the host machine that where the client create (`docker build`), get (`docker pull`) image or create a new container from an image (`docker run`).  
> To see details for the commads you can run: `docker --h`

##

### $\textsf{\color{#5bc0de}{• Client:}}$
Someone who can run the commands in the host machine (Team partner or owner of image...).

##

### $\textsf{\color{#5bc0de}{• Registry:}}$
Is the host where your image could be accecible in public.

##


### $\textsf{\color{#ff0000}{Some optinal videos to understand the concept:}}$
> •	image: [What is an image? | Docker Docs 3:55min](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-an-image/)  
> •	container: [What is a container? | Docker Docs 3:40min](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/)  
> •	Registry : [What is a registry? | Docker Docs 2:15min](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-registry/) 

##

### **$\large \textsf{\textbf{\color{#3333ff}{Goal:}}}$**

Create a simple code Html that contain Hello ilias (it’s no more hello world 😉).

![image-2](https://github.com/user-attachments/assets/68fc37f2-3e6d-41e3-b7db-cc34f1c9bcd4)    

##

To create a simple image you need to create `Dockerfile`, you find it in the racine of the project. 

### **Build an image:**  
![image-3](https://github.com/user-attachments/assets/a6c32dba-ef6e-451b-bcb1-6c6d90433305)   

![image-4](https://github.com/user-attachments/assets/008150f3-d054-4a03-b958-03c595c11167)

$\textbf{\color{#ff0000}{or with command line:}}$
```
docker build -t ilias-image
```
##

### **Create a container from the image:**  
Try to run the image in the graphical view  
![image-5](https://github.com/user-attachments/assets/8aeab241-c3a5-4f11-9366-f425fb8f4a35)



$\textbf{\color{#ff0000}{or with command line:}}$

```
docker run -d -p 1717:80 --name ilias-container ilias-image
```
##
•	Congratulation your container app turn in local server port : 1717    
![image-6](https://github.com/user-attachments/assets/167f4f12-066c-4222-99bf-ee8b0b940963)

##
### **Push the image to Docker Hub:**  
1.Sign in with your docker hub account [Sign in](https://login.docker.com/u/login/identifier?state=hKFo2SBxMi1MYkhjdGpoeUNfR2cwRXpkakUtQmlhYzNsbnZQcaFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIGdxZnYwaFdneU1KUGNvLW1PUW4xVjNmdi1lMWxMLUhho2NpZNkgbHZlOUdHbDhKdFNVcm5lUTFFVnVDMGxiakhkaTluYjk).   
2.Create a repository where you will push the image to.   
3.Log in with your account in the host machine `docker login`.  
4.Crete a new image that you will push and tag it.  
```
docker tag local-image:tagname new-repo:tagname
```
5.Push the image
```
docker push new-repo:tagname
```
![image-7](https://github.com/user-attachments/assets/8e5a991f-df9e-4fe8-a239-5371130218f5)
