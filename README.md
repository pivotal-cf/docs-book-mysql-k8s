#  VMware Tanzu™ SQL with MySQL for Kubernetes

This project can create and publish the documentation for VMware Tanzu™ SQL with MySQL for Kubernetes as a web app.

The content repo associated with this book is [**pivotal-cf/docs-mysql-k8s**](https://github.com/pivotal-cf/docs-mysql-k8s).

In this topic:

* [What's in this Repo](#whats-in-this-repo)
* [The Docs Toolchain](#the-docs-toolchain)
* [Contributing to the Documentation](#contributing-to-the-documentation)
* [Submitting a Pull Request](#submitting-a-pull-request)


**Breaking Change**: This book now uses a centralized layout repository, [docs-layout-repo](https://github.com/pivotal-cf/docs-layout-repo).  
You must clone this repository to run `bookbinder bind local`.

The centralized layout repository is specified as the value of the `layout_repo` key in the `config.yml` file.
Bookbinder uses this centralized layout repository by default, but files in the book's `master_middleman/source` directory override files in the centralized layout repository if they have the same name.

## What's in this Repo

Here you'll find the configuration and templates for the VMware Tanzu SQL [MySQL] documentation set published to [docs.pivotal.io/tanzu-mysql-kubernetes/](http://docs.pivotal.io/tanzu-mysql-kubernetes/).

This repository *does not* contain the actual documentation content.
Actual content is contained in the topic repositories listed in the `config.yml` file.

The `master_middleman` folder contains the templates used for publishing.

The redirect for the unversioned route is in `docs-book-pcfservices`.
We update this redirect for each minor release so that a URL without a version number redirects to the latest release.
For example: `r302 %r{/tanzu-mysql-kubernetes/(?![\d-]+)(.*)}, "/tanzu-mysql-kubernetes/1-0/$1"`

All other redirects are in the local `redirects.rb` file for all the versions that the redirects apply to.

Each version of VMware Tanzu SQL [MySQL] has its own book branch:

| Branch name | Use for… |
|-------------| -------|
| main      | "edge" branch for 1.x, publishes to http://docs-pcf-staging.cfapps.io/tanzu-mysql-kubernetes/1-n/|
| 1.0      | v1.0 GA, publishes to http://docs.pivotal.io/tanzu-mysql-kubernetes/1-0/ This app must be `cf push`-ed manually. No concourse jobs or CI as of 2021.04.15.|
| 0.2      | v0.2.x beta, publishes to http://docs.pivotal.io/tanzu-mysql-kubernetes/0-2/|
| 0.1      | v0.1.x beta, publishes to http://docs.pivotal.io/tanzu-mysql-kubernetes/0-1/|

## The Docs Toolchain

This documentation is written in markdown and published using the [Bookbinder gem](http://github.com/pivotal-cf/docs-bookbinder) to generate the documentation as a web application with [Middleman](http://middlemanapp.com/).

Bookbinder enables us to single-source docs content for multiple contexts.

## Contributing to the Documentation

The docs team prefers to receive documentation contributions as pull requests rather than having engineering teams push directly to the docs repos.
This gives us a chance to review the changes for consistency and understand the new content.

If you are planning to initiate a large documentation effort, please coordinate with the docs team in advance to make sure we're not going to step on each other.
You can reach the docs team by email at [cf-docs@pivotal.io](mailto:cf-docs@pivotal.io).

If you are trying to figure out where a particular bit of information should live, please reach out and ask.
We're happy to help you ensure information goes to the right place.

Note that content often lives in more than one context.
Please make sure that any contribution you offer takes these multiple contexts into account.

## Submitting a Pull Request

This is a Bookbinder project. See [its README](https://github.com/pivotal-cf/bookbinder/blob/master/README.md) for instructions on how edits are made.

