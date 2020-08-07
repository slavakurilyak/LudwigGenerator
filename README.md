# LudwigGenerator

LudwigGenerator is a code generator for Ludwig models.

## Background

Operating machine learning models in production is costly. According to [Stripe](https://stripe.com/en-ca/reports/developer-coefficient-2018), developers spend 42% of their time on code maintenance. 

> Developers spend over 17 hours every week dealing with maintenance issues like debugging and refactoring, and about a quarter of that time is spent fixing bad code. That’s nearly $300B in lost productivity every year. It’s not how many software engineers a company has; it’s how their talent is being utilized.

How can ML practioners minimize (or eliminate) the management of ML models in production? By using serverless! With serverless architectures, ML practioners are empowered to focus on what matters most - delivering business value, not managing servers.

With LudwigGenerator, ML practioners can quickly create low-code ML models (image classification, text classification) and deploy them onto serverless services ([AWS Lambda](https://aws.amazon.com/lambda/), [AWS DynamoDB](https://aws.amazon.com/dynamodb/)) powered by the [serverless framework](https://serverless.com).

## Usage

To run LudwigGenerator, you will need to install the following depedencies:

1. **Serverless Framework**. Refer to [official docs](https://www.serverless.com/framework/docs/getting-started/) for installation instructions. AIstack uses Serverless Framework to generate a serverless machine learning application, deployed on a serverless service (i.e. AWS Lambda) and an API endpoint (i.e. AWS API Gateway) for accessibility.
2. **YQ**. Refer to [official docs](https://mikefarah.gitbook.io/yq/) for installation instructions. After Ludwig model is generated, a post-generate hook (i.e. shell script) is used to modify the default YAML configuration using YQ.

After installing two dependencies, run the following command:

```
$ bash generator.sh
```

## Technology Choices

### Why Serverless Framework

Serverless Framework is a web framework developed for building applications using serverless architectures. A serverless service is a combination of Function as a service (FaaS) and Backend as a Service (BaaS). Serverless technologies like AWS Lambda, Google Functions, or Azure Functions reduce the cost of running an application by shifting the operational burden from the application developer to the platform provider.

### Why YQ

YQ is a lightweight and portable command-line YAML processor. YQ updates yaml files given a path expression or script file. 