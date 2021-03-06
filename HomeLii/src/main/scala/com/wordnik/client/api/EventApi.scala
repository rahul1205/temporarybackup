/**
 * HomeLii Security Automation
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: apiteam@swagger.io
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.wordnik.client.api


import java.io.File

import org.scalatra.{ TypedParamSupport, ScalatraServlet }
import org.scalatra.swagger._
import org.json4s._
import org.json4s.JsonDSL._
import org.scalatra.json.{ JValueResult, JacksonJsonSupport }
import org.scalatra.servlet.{FileUploadSupport, MultipartConfig, SizeConstraintExceededException}

import scala.collection.JavaConverters._

class EventApi (implicit val swagger: Swagger) extends ScalatraServlet
    with FileUploadSupport
    with JacksonJsonSupport
    with SwaggerSupport {
  protected implicit val jsonFormats: Formats = DefaultFormats

  protected val applicationDescription: String = "EventApi"
  override protected val applicationName: Option[String] = Some("/v2/Event")

  before() {
    contentType = formats("json")
    response.headers += ("Access-Control-Allow-Origin" -> "*")
  }
  

  val eventStatusOperation = (apiOperation[String]("eventStatus")
      summary "Get the device's event status in response"
      parameters(pathParam[String]("eventCode").description(""), pathParam[String]("accountNumber").description(""))
  )

  get("/event/status/:account_number/:event_code",operation(eventStatusOperation)) {
    
    
      val eventCode = params.getOrElse("eventCode", halt(400))
    
    println("eventCode: " + eventCode)
    
    
      val accountNumber = params.getOrElse("accountNumber", halt(400))
    
    println("accountNumber: " + accountNumber)
  }

  

  val eventTriggerOperation = (apiOperation[String]("eventTrigger")
      summary "Get the device's event status in response"
      parameters(pathParam[String]("eventCode").description(""), pathParam[String]("accountNumber").description(""), queryParam[String]("onoff").description("").optional, queryParam[String]("apn").description("").optional, queryParam[String]("apnName").description("").optional, queryParam[String]("pwd").description("").optional, queryParam[String]("ip").description("").optional, queryParam[String]("port").description("").optional, queryParam[String]("userId").description("").optional, queryParam[String]("group").description("").optional, queryParam[String]("number").description("").optional, queryParam[String]("alarmingDelay").description("").optional, queryParam[String]("disalarmingDelay").description("").optional, queryParam[String]("time").description("").optional, queryParam[String]("attribute").description("").optional)
  )

  post("/event/trigger/:account_number/:event_code",operation(eventTriggerOperation)) {
    
    
      val eventCode = params.getOrElse("eventCode", halt(400))
    
    println("eventCode: " + eventCode)
    
    
      val accountNumber = params.getOrElse("accountNumber", halt(400))
    
    println("accountNumber: " + accountNumber)
    
    
                val onoff = params.getAs[String]("onoff")

    println("onoff: " + onoff)
    
    
                val apn = params.getAs[String]("apn")

    println("apn: " + apn)
    
    
                val apnName = params.getAs[String]("apnName")

    println("apnName: " + apnName)
    
    
                val pwd = params.getAs[String]("pwd")

    println("pwd: " + pwd)
    
    
                val ip = params.getAs[String]("ip")

    println("ip: " + ip)
    
    
                val port = params.getAs[String]("port")

    println("port: " + port)
    
    
                val userId = params.getAs[String]("userId")

    println("userId: " + userId)
    
    
                val group = params.getAs[String]("group")

    println("group: " + group)
    
    
                val number = params.getAs[String]("number")

    println("number: " + number)
    
    
                val alarmingDelay = params.getAs[String]("alarmingDelay")

    println("alarmingDelay: " + alarmingDelay)
    
    
                val disalarmingDelay = params.getAs[String]("disalarmingDelay")

    println("disalarmingDelay: " + disalarmingDelay)
    
    
                val time = params.getAs[String]("time")

    println("time: " + time)
    
    
                val attribute = params.getAs[String]("attribute")

    println("attribute: " + attribute)
  }

}
