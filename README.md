Kafka MQTT Bridge
=================


```
docker build -t 127.0.0.1:5000/mqttbridge .  

docker push 127.0.0.1:5000/mqttbridge

docker service create \
         --name mqttbridge --publish 1880:80 --publish 1883:1883 \
         --host kafka01:172.17.1.86 \
         --host kafka02:172.17.1.87 \
         --host kafka03:172.17.1.88 \
        127.0.0.1:5000/mqttbridge
```

# Updating auth.json file you need to create a hash from usernamepassword
# For example:
```
/home/fred$ read username
fred
/home/fred$ read password
supersecret
/home/fred$ echo -n "$username$password" | md5sum
111af84799aaf1efd096c03e3275aad6  -
```

Credits
-------

* [Matteo Collina](//twitter.com/matteocollina)
* [Robert Fuller](//github.com/fullergalway)
* [Adam Leadbetter](//twitter.com/adamleadbetter)
* [Damian Smyth](//ie.linkedin.com/in/damian-smyth-4b85563)
* [Eoin O'Grady](//ie.linkedin.com/in/eoin-o-grady-6177b)
