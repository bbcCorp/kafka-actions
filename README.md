# kafka-actions

This [GitHub Action](https://github.com/features/actions) sets up Bitnami Kafka instance.

Inspired by https://github.com/getong/rabbitmq-action, @getong Thanks!

---------
## Usage

See [action.yml](action.yml)

Basic:
```yaml
    - name: Start Bitname Kafka
      uses: bbcCorp/kafka-actions@v1
```

Now you should be able to publish to Kafka broker running at `localhost:9092` 


---------
## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)