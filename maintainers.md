# Series workshop maintainer instructions

## Authoring guidelines

The Cloud Native Development fundamentals series of workshops and
content have a rigid set of authoring guidelines.

This series content is targeted for two audiences:

-   Rich set of stand-alone workshops and lecture content that students
    can consume in any order,
    at their own pace.

-   An on-demand course for students completely new to cloud native
    concepts.
    This is a natural evolution of the previous Master Class developer
    courses.

This series outcomes are currently targeted to teach concepts,
patterns, practices and guidelines.
It is not designed to teach tools.

The following are a set of guidelines when building out content:

### Lecture materials

The lecture materials are currently authored as Google Slides,
you can find
[here](https://drive.google.com/drive/folders/1xFR91yzpMsWagQPsQnQyjd5jL3QEBlRJ):

-   Use the Vmware branding guide with authoring slides.
-   Author the speaker narrative in the speaker notes.
-   WIP for next version is in the draft folder
    [here](https://drive.google.com/drive/folders/1BQH-YNbmQ0qpZT0jsCr2Ah_XirgJbFHR).
-   Each published version of workshop, or workshops will have a tagged
    release version.
    -   Create a new slides/video version folderset here with the
        appropriate version tag,
        and copy over from the drafts folder as appropriate.
        See [v0.2.25 here](https://drive.google.com/drive/folders/1xsZo5-5FAhmciARVU96MZMVlRYknbKbr) as an example to follow.
    -   Mark the version number in the title of the copied slide deck.
-   Record each video as an MP4, and upload to the appropriate version
    folder.
-   Add the video to the Vimeo series playlist and reference where
    appropriate in the workshop instructions (this may be moved to
    TDC series in the future).

### Lead with concepts, follow with tools

Outcomes of all the content,
both lecture and workshop,
are not intended to teach tools.

There is a lot more (and better) content available for that.

This series content are intended to teach concepts,
but it is ok to present tools to support teaching the concepts of a
particular lesson.

A litmus test to follow:

-   Lesson titles must not have a product name in it.

-   Lesson outcomes must not have product names in them.

-   Refer to Cloud Native patterns and vendor agnostic industry
    practices where appropriate.

    Some examples of source materials:

    - [12 factor](12factor.net)
    - [Beyond 12 factor]()
    - [Microservices Patterns](https://microservices.io)
    - [Fowler Bliki](https://www.martinfowler.com/bliki)
    - [App Continuum](https://www.appcontinuum.io/)

    Others are OK, as long as they are sited from public internet
    sources, not vendor specific, and do not directly quote copyrighted material.

-   Distill talking points to simplest concepts,
    do not assume students will know about them or the products.

-   When you encounter a "chicken-or-egg" scenario where you must talk
    about a related concept or definition related to the primary concept
    in a lesson,
    introduce it with a short paragraph,
    and defer it to a later lesson, or external references.

-   When referring to tools in lecture or workshop content,
    present the minimum features necessary to teach the primary concept
    of the lesson.

-   Do not refer to product-specific patterns or practices,
    unless they directly apply to the concepts in the lesson.

## Anatomy and stucture of a workshop

A *workshop* is a grouped set of exercises to demonstate a key
Cloud Native fundamentals concept
(or perhaps up to a few simple concepts).

A workshop is managed as its own repository,
is tied to Educates framework,
and is deployable to an artitrary Educates K8s cluster.

The output of a workshop build is a released container image that the
Tanzu Developer Center will deploy to the internet for public
consumption.

Each workshop repo is structured as follows:

-   `deploy` directory contains scripts and K8s resources necessary to
    deploy the workshop.
-   `workshop-files` directory contains files necessary for the
    students to execute the exercises on a running Educates cluster
    *workshop session*.
-   `workshop-instructions` directory contains the following instruction
    content,
    sourced in markdown:
    -   `intro` contains an Introduction for the workshop.
        The beginning section and learning outcomes sections provide
        information for the landing page in TDC.
    -   `wrap` contains a wrap up section for the student to reflect
        about what they did during the workshop,
        as well as give them pointers where they might go next.
    -   `exercises` directory contains an ordered/numbered list of
        markdown files where the specific lab instructions exist.

## Worflow - installing a workshop for the first time

-   [Install Docker](https://docker.io) (if not already installed):
-   [Install Kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
    (if not already installed)

-   Run `make` - it will build your workshop container(s) and deploy
    them to your development Kind cluster named `cnd-practices`.

-   Run `sideload-exercises.sh`:
    It will build containers on your development workstation,
    then "side load" them to the Kind cluster such that your
    workshop exercises can access them.

## Workflow - updating an existing workshop

Most of the work will be done against exist workshops,
in the `workshop-files` and `workshop-instructions` directories.

If you make either a lab file or instruction file change,



## Setting up a new workshop

### Initialize new local workshop

1.  Identify a `topic` for the new workshop on one or two short words.
    As an example,
    the following are used for the first three workshops of the series:

    - `deploy`
    - `config`
    - `lifecyle`

1.  Clone this repo to your local machine
    (this example assumes your workshop repos are cloned to the
    `~/workspace` directory):

    ```bash
    cd ~/workspace
    git clone git@github.com:platform-acceleration-lab/cnd-practices
    cd cnd-practices
    ```

1.  Run the bootstrap script:

    ```bash
    ./scripts/bootstrap-workshop.sh {{topic}}
    ```

    *You will push to Github remote repo after refining your template.*

At this point you will have a skeleton workshop that is properly tagged.

But you have no content.

### Author the Introduction and Wrap sections

Before you
### Setup exercises