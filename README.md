# ios-swift-boilerplate

This is a base iOS scaffold project that has basic configuration & setup created. So we can reduce the efforts of basic project setup & project level boilerplate code.

## Features

### Schemes

There are following 3 schemes configured:

1. `scaffold` => For running app in production environment.
2. `scaffold-stage` => For running app in staging environment.
3. `scaffold-dev` => For running app in develop environment.

> Scheme-wise bundle ids are overridden. So that the same application with different environments can be installed simultaneously on the same device.

### Linter

Uses [SwiftLint](https://github.com/realm/SwiftLint) for ensuring code standards are followed appropriately.

### Static Resources Generation

Uses [R.Swift](https://github.com/mac-cain13/R.swift) to generate static resources used in the project.

### Firebase

#### Crashalytics

Monitors the health of the application. [More info](https://firebase.google.com/docs/crashlytics)

#### Analytics

Collects the default analytics like Screen Views, App Opens, etc. It can be extended further to collect custom events. [More info](https://firebase.google.com/docs/analytics)

### CI / CD

#### Codemagic

Codemagic.yaml file has been added at the root of source code. It contains sample pipeline for Development build.

###### How To Build?

1. Connect the project repository to codemagic using [this guide](https://docs.codemagic.io/getting-started/adding-apps-from-custom-sources/). Codemagic will auto-detect the yaml file which has sample workflow added.
2. Select `dev` workflow and select the branch from which buid to be generated. Start Build and it should generate the dev build.

###### What to be configured?

1. Code Signing assets like Certificates, Profiles, etc. needs to be changed based on project's bundle ids and environments. [More info](https://docs.codemagic.io/code-signing-yaml/signing-ios/#manual-code-signing)
2. For code signing profiles, following is recommended:
- Local distribution (QA, Client Releases, etc) - `adhoc` profiles
- Store / TestFlight distribution - `appstore` profiles.

###### How to distribute?
Once codemagic generates the artifacts, we can distribute the ipa in various ways.

1. Using Firebase App Distribution. [More info](https://firebase.google.com/docs/app-distribution).
One can automate the firebase distribution as mentioned [here](https://docs.codemagic.io/publishing-yaml/distribution/#publishing-an-app-to-firebase-app-distribution).
2. Using platforms like [Diawi](https://www.diawi.com/)
3. Sharing raw ipa to user which is less convenient as user needs iTunes to install the build to the device in this case. *(Not Recommended)*
