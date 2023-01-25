### Introduction

#### CARA PMP direct
* CARA’s eMedication service Integration Guide: [https://cara-ch.github.io/emed-service-guide/](https://cara-ch.github.io/emed-service-guide/)   
* FHIR Implementation Guide which defines the documents for the exchange of medication information in the context of the eMedication service: [https://build.fhir.org/ig/CARA-ch/ch-emed-epr/](https://build.fhir.org/ig/CARA-ch/ch-emed-epr/)

Endpoints for CARA PMP through IHE / XDS:

- ITI-18: services/xds/iti18
- ITI-41: services/xds/iti41
- ITI-43: services/xds/iti43
- ITI-57: services/xds/iti57
- CH:PHARM-1: services/cmpd/chpharm1
- Logs: mhd/logs
- Debug: mhd/debug
- ATNA: mhd/atna

Hosts:
- https://pmp.hcuge.ch/pmp/
- https://pmp.posttenebrassilico.ch/pmp/ (temporarily)


#### CARA PMP with MAG & Matchbox
For using CARA PMP with Mobile Access Gateway and Matchbox see [https://github.com/ahdis/mag-emed-pmp](https://github.com/ahdis/mag-emed-pmp), logs can be checked at [https://test.ahdis.ch/eprik-proxy-cara/](https://test.ahdis.ch/eprik-proxy-cara/)




### About this IG
#### Download
You can download this implementation guide in the [NPM package](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) format from [here](package.tgz).


### IP Statements

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}