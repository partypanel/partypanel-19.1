# Party Panel project organisation

## Preparation directory

The `preparation` directory contains all resources that were generated while preparing for a Party Panel round. Specifically, it nomrally contains two subdirectories, `pre1` and `pre2`:

- `pre1`: The first preparatory phase roughly corresponds to Intervention Mapping's first step: the needs assessment. The product of this first phase is the selection of one or more target behavior(s) for that Party Panel round.
- `pre2`: The second preparatory phase roughly corresponds to a belief elicitation study as described in the Reasoned Action Approach: 

As of Party Panel 19.1, the work in these two preparatory stages will be structured using a number of free tools:

- The R `justifier` package will be used to document the decisions and their justifications;
- The R `dct` package will be used to leverage Decentralized Construct Taxonomies in the qualitative work and to develop the questions used in the quantitative Party Panel data collection;
- The R `rock` package will be used to leverage the Reproducible Open Coding Kit (the ROCK) to code the sources of qualitative data in the second prepratory phase.

This makes it possible to make the Party Panel procedure more transparent, thereby facilitating copying these procedures by other organisations, and allows using the generated data and other resources for other ends as well.

## File types

Given this choices in tooling, you can expect to find one or more of the following files in these two directories:

- `pre1`: The `pre1` directory will mostly just contain one file type:
  - `jmd` files, the 'justified markdown' format used by the `justifier` package;
- `pre2`: The `pre2` directory will usually contain three types of files:
  - `jmd` files, the 'justified markdown' format used by the `justifier` package;
  - `rock` files, qualitative data sources that are coded using the ROCK;
  - `dct` files, which contain (parts of) Decentralized Construct Taxonomies.

These are all plain-text files that are, as much as possible, both 'human-readable' and 'machine-readable'. More information about these file formats is available at the Open Science Framework repositories associated to these projects:

- The `justifier` OSF project page is at https://osf.io/vxqut/
- The Decentralized Construct Taxonomies OSF project page is at https://osf.io/tx5pa
- The Reproducible Open Coding Kit OSF project page is at https://osf.io/ymg3f/

## Private versus public files and directories

Sometimes you may encounter directory names and/or filenames that contain `[[PUBLIC]]`. This is part of a convention to secure privacy of participants and prevent accidental sharing of copyrighted materials: all directories and files that contain `[[PRIVATE]]` will not be included in commits and pushes to this Party Panel round's git repository. This same convention holds that if private versions are at some point processed into public versions, those versions receive `[[PUBLIC]]` in their filenames.


