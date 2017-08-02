# Watt Meter Emulator

&copy; University of Leeds 2016

Watt Meter Emulator is a component of the European Project TANGO (http://tango-project.eu).

The Watt Meter Emulator is distributed under a [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Description

The emulated Watt meter is a tool that is designed to emulate the presence of a Watt meter been attached to a physical host inside a Tango based environment.

## Installation Guide

This guide it is divided into two parts, one specific to compilation of the Watt Meter emulator and the second on how to run and configure the emulator.

### Compilation

#### Requirements

The Energy Modeller's primary two prerequisites are:

* Java
* Maven

#### Installation and configuration procedure

To compile the Watt Meter emulator, the following steps must be performed:
1.	Generate the Watt Meter enulator jar using the command: mvn clean package (executed  in the Watt meter emulator directory)
2.	Install the database. SQL statements to setup the database are held in the file “energy modeller db.sql” file it is held in the {energy-modeller root directory}\src\main\resources.

#### Build status from Travis-CI

[![Build Status](https://travis-ci.org/TANGO-Project/energy-modeller-calibration-tool.svg?branch=master)](https://travis-ci.org/TANGO-Project/energy-modeller-calibration-tool)

#### Sonar Cloud reports:
The Sonar Cloud reports for this project are available at: https://sonarcloud.io/dashboard?id=eu.tango%3Awatt-meter-emulator

### Installation for running the service

In this case, we are going to detail how to perform a calibration run.

## Usage Guide

java –jar host-power-emulator-0.0.1-SNAPSHOT.jar [hostname] [host-name-to-clone]

[hostname]: This is an optional argument that states which host to emulate the Watt meter for.

[host-name-to-clone]: This is an optional argument that allows the named host to have its data cloned for the purpose of emulating the named host.
If no hostname is specified the tool will work for all calibrated hosts.

[stop-on-clone]: This parameter stops the emulated Watt meter as soon as the cloning of the host calibration data has been completed. Thus it may be used to simply copy calibration data for one host to another.

## Relation to other TANGO components

The Watt meter emulator works with the following components:

* **Energy Modeller** - The Watt meter emulator uses models provided by the energy modeller as a basis of its estimate.
* **Device Supervisor** - The Watt meter emulator can directly interface with the device supervisor as a means of using it as both a datasource for monitoring the environment.
* **Monitoring Infrastructure** - The Watt meter emulator can use the monitoring infrastructure as a means of using it as a datasource.
