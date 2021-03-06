import java.util.{Date, Properties}

import org.apache.kafka.clients.producer.{KafkaProducer, ProducerRecord}

import scala.util.Random

object ScalaProducerExample extends App {
  val events = 10000
  val topic = "test-topic"
  val brokers = "localhost:9092"
  val rnd = new Random()
  val props = new Properties()
  props.put("bootstrap.servers", brokers)
  props.put("client.id", "ScalaProducerExample")
  props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer")
  props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer")


  val producer = new KafkaProducer[String, String](props)
  //val t = System.currentTimeMillis()
	var a = 0;
  for (a <- 1 to 10) {
    //val runtime = new Date().getTime()
    //val ip = "192.168.2." + rnd.nextInt(255)
    //val msg = runtime + "," + nEvents + ",www.example.com," + ip
    //val data = new ProducerRecord[String, String](topic, ip, msg)
	val msg = "Test"+a
	val data = new ProducerRecord[String, String](topic, msg)

    //async
    //producer.send(data, (m,e) => {})
    //sync
    producer.send(data)
  }

  //System.out.println("sent per second: " + events * 1000 / (System.currentTimeMillis() - t))
  producer.close()
}













//package com.colobu.kafka


