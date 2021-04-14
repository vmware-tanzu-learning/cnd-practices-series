# Series workshop maintainer instructions




## Updating an existing workshop



## Setting up a new workshop

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


###