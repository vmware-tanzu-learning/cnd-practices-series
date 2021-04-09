---
title: "Cloud Native Development and Operations Fundamentals"
draft: false
description: >
    You will learn and apply Cloud Native practices and patterns to
    build green field applications and microservices, as well as
    evolving, replatforming and modernizing legacy applications.
summary:
    You will learn and apply Cloud Native practices and patterns to
    build green field applications and microservices, as well as
    evolving, replatforming and modernizing legacy applications.
topics:
tags:
  - Practices
  - Development
---
This is a multi-series of lectures and workshops for developers and
application operators who need to design, build, operate, and evolve
applications running on modern platforms.

The learning path focuses on concepts and practices first,
using modern tools such as Spring, Kubernetes and Tanzu specific
products.

*The multi-series does not teach specific tool features in isolation,*
*except where demonstrating concepts or practices of a particular*
*lesson.*

The roadmap is as follows,
with the following clarifications:

- Series, workshops or tracks suffixed with * are currently available.
- Series, workshops or tracks suffixed with ** are currently being authored.
- Series, workshops or tracks suffixed with *** are planned.

The rest are considered roadmap, and subject to evolve based from
field feedback and customer demand.

## Series 1 - Build and operate a Greenfield Cloud Native application

A 100 level series with a focus on getting a greenfield application up
and running, and covering day 2 operations.

### Introduction

First workshop introduces concepts in the following tracks (lessons):

1. Cloud Native introduction*
1. Personas and Roles*
1. Practices and Guidelines*
1. Modern Platform Concepts*

### Build and Operate a Single Cloud App***

This series is based on concepts and practices previously taught in
the Spring Boot Developer unit of the Instructor-Led Master Class 
for Developers courses using Tanzu Application Services or Kubernetes.

1.  Containerization and deployment of a web application*
1.  Handling environmental configuration**
1.  Application and deployment lifecycle management**
1.  Zero downtime upgrades**
1.  Making an application available.**
1.  Scaling an application**
1.  Monitoring an application
1.  Introduction to fault tolerance, resilience, chaos engineering
    (fail fast, socket timeout, retry/backoff)
1.  Automation, Continuous Integration and Delivery Pipelines
1.  REST applications
1.  Database migrations and versioning
1.  Backing Services

## Series 2 - Distributed applications and microservices

A mix of 100 and 200 level series tracks covering the concepts,
guidelines, practices and patterns on how to evolve a codebase and
application deployment architecture to accommodate problems with
distributed applications and microservices.

This series is based on concepts and practices previously taught in
the Spring Cloud Developer unit of the Instructor-Led Master Class 
for Developer course using Tanzu Application Services.
The Spring Cloud Service content is out-of-date,
and the idea is to modernize in this series.

1.  Evolving a codebase -> monolith to microservices (App Continuum)
1.  Introduction to distributed applications (Microservices)
1.  Classifying the problems encountered when introducing Microservices
1.  API Versioning
1.  Specialized concepts for microservices solution patterns:
    - Service Discovery
    - Client Load Balancing
    - Distributed Trace
    - API gateways
    - Advanced fault tolerance, resilience and antifragility (fallback, circuit break, bulkhead, walk-away timeout)

## Series 3 - Architecture Styles

A mix of 100 and 200 level series tracks that cover what to do when
simple web applications are not enough:

1.  Event-based architectures
    - Serverless
    - Webhooks
    - Event sourcing
    - CQRS
1.  Reactive (non-blocking)
1.  Streams
1.  Batch (in a Cloud Native friendly way)

## Series 4 - Replatforming

A mix of 100 and 200 level series tracks that cover how to get a legacy
application onto a modern platform, and what practices are necessary to
get it there.

## Series 5 - Modernization

A mix of 100 and 200 level series tracks that cover how to get a legacy
or replatformed application to be Cloud Native.

## Series 6 - Capstone, putting things together

A 300 level series that takes a student through a journey of
building a green field Cloud Native application,
evolve it through a series of real world problems during its "Day 2"
application phase.

- See [PAL Tracker Evolution](https://github.com/platform-acceleration-lab/pal-tracker-evolution#readme), each release is a workshop to apply fundamentals principles.
