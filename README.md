# Overview

Project X aka take home assignment

## Requisite
- node (>=16)
- make
- python 3.11

## initial setup
- Run make to create virtual environment
```bash
make
```

- Activate the venv
```bash
source .venv/bin/activate
```
- Install python dependencies
```bash
pip install -r requirements.txt
```
- Install nodejs dependencies
```bash
cd user-service
npm install
```
## 1. User Service

### Endpoints

- `GET` `/users`: List all users
- `GET` `/users/:id`: Get users by ID
- `POST` `/users`: Create a new user
- `PUT` `/users/:id`: Edit a user
- `DELETE` `/users/:id`: Delete a user

### How to start

- Start user service

```bash
cd user-service
npm start
```

## 2. Backend web server

### CRUD Operations via Django Admin

- `GET` `/products`: Retrieve all products
- `POST` `/products`: Create a new product
- `GET` `/products/:id`: Get product by ID
- `PUT` `/products/:id`: Update product by ID
- `DELETE` `/products/:id`: Delete product by ID

### How to start

- Run backend
- Run migrations to create database tables:
- Create an admin(username:admin/pass:homebase2023)
- Start backend

```bash
cd backend
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

## 3. Proxy Service

### Usage

Make requests to the hardcode proxy `user-service`

### How to start

- Start the proxy service
- Run the Python Proxy Script (`localhost:5000/proxy`)

```bash
cd proxy-service
python api_proxy.py
```
