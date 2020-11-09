#!/bin/sh

docker_run="docker run"

run_zookeeper="$docker_run -d -p $INPUT_ZOOKEEPER_PORT:2181 -e ALLOW_ANONYMOUS_LOGIN=yes bitnami/zookeeper:$INPUT_ZOOKEEPER_VERSION"
sh -c "$run_zookeeper"

run_kafka="$docker_run -d -p $INPUT_KAFKA_PORT:9092 -e KAFKA_BROKER_ID=1 -e KAFKA_LISTENERS=PLAINTEXT://:9092 -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://127.0.0.1:9092  -e ALLOW_PLAINTEXT_LISTENER=yes -e KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 bitnami/kafka:$INPUT_KAFKA_VERSION"
sh -c "$run_kafka"
