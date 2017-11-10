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

import com.wordnik.client.model.Device

import java.io.File

import org.scalatra.{ TypedParamSupport, ScalatraServlet }
import org.scalatra.swagger._
import org.json4s._
import org.json4s.JsonDSL._
import org.scalatra.json.{ JValueResult, JacksonJsonSupport }
import org.scalatra.servlet.{FileUploadSupport, MultipartConfig, SizeConstraintExceededException}

import scala.collection.JavaConverters._

class DeviceApi (implicit val swagger: Swagger) extends ScalatraServlet
    with FileUploadSupport
    with JacksonJsonSupport
    with SwaggerSupport {
  protected implicit val jsonFormats: Formats = DefaultFormats

  protected val applicationDescription: String = "DeviceApi"
  override protected val applicationName: Option[String] = Some("/v2/Device")

  before() {
    contentType = formats("json")
    response.headers += ("Access-Control-Allow-Origin" -> "*")
  }
  

  val addDeviceOperation = (apiOperation[Unit]("addDevice")
      summary "Add a new Device"
      parameters(bodyParam[Device]("body").description(""))
  )

  post("/device",operation(addDeviceOperation)) {
    
    
          val body = parsedBody.extract[Device]

    println("body: " + body)
  }

  

  val updateDeviceOperation = (apiOperation[Unit]("updateDevice")
      summary "Update an existing device account"
      parameters(bodyParam[Device]("body").description(""))
  )

  put("/device",operation(updateDeviceOperation)) {
    
    
          val body = parsedBody.extract[Device]

    println("body: " + body)
  }

}