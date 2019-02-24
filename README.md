# Ruby excercises using a docker container

Essential examples using ruby over docker

## Getting Started

Open docker and pull ruby image from docker

```
docker pull ruby
```

## Prerequisites

You will need to have Docker pre-installed in your computer


## Build and run the examples

Change the CMD in Docker file in order to use a different example, currently it's using "index.rb"

Use below command to build the application

```
docker build -t my-ruby-app .
```

Then use below command to run it:

```
docker run my-ruby-app
```

If everyhing is ok you will see "Hello from ruby!" message

## Built With

* [Docker](https://hub.docker.com/_/ruby) - Ruby container used in these examples

