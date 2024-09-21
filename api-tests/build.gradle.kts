plugins {
    id("jacoco")
    idea
    id("java")
}

java {
    sourceCompatibility = JavaVersion.VERSION_21
    targetCompatibility = JavaVersion.VERSION_21
}

repositories {
  mavenCentral()
}

val jupiterVersion = "5.11.0"
val junitPlatformVersion = "1.11.0"

dependencies {

    testImplementation("com.intuit.karate:karate-junit5:1.4.1")

    testImplementation("org.junit.jupiter:junit-jupiter-api:$jupiterVersion")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:$jupiterVersion")
    testImplementation("org.junit.jupiter:junit-jupiter-params:$jupiterVersion")

    testImplementation("org.junit.platform:junit-platform-commons:$junitPlatformVersion")
    testImplementation("org.junit.platform:junit-platform-runner:$junitPlatformVersion")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher:$junitPlatformVersion")
    testRuntimeOnly("org.junit.platform:junit-platform-engine:$junitPlatformVersion")
}

tasks.test {
    useJUnitPlatform()
}

configurations.all {
    exclude(group="ch.qos.logback", module="logback-classic")
}

