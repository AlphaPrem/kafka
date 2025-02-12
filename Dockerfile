# Base Image
FROM confluentinc/cp-kafka:latest

# Set environment variables for Kafka
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1

# Expose Ports
EXPOSE 9092

# Start Kafka
CMD ["sh", "-c", "exec /etc/confluent/docker/run"]
