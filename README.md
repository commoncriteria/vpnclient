Protection Profile Template
===============

Quickstart
----------

1. To make a new protection profile create a new repo, probably through the web interface. 


2. Copy the URL to the projects git file to the clipboard. Run the following script, pasting the value copied into where you see $NEW_REPO_GIT_URL.

````
git clone --bare https://github.com/commoncriteria/pp-template.git
# Make a bare clone of the repository

cd pp-template.git
git push --mirror $NEW_REPO_GIT_URL
# Mirror-push to the new repository

cd ..
rm -rf pp-template.git
# Remove our temporary local repository
````

3. Do a full clone of your new project

4. Rename the input file, currently named, input/pp-template.xml to the name
of the project with xml added to it; for example, operatingsystem and application
have operatingsystem.xml and application.xml input files respectively.

If something was the project name it would be,

````
git mv input/pp-template.xml input/something.xml
````
5. If creating a Protection Profile Module rename Module.make to Makefile otherwise rename ProtectionProfile.make to Makefile and delete the other .make file.

6. If creating a Protection Profile Module open input/somethhing.xml and change the opening <PP> and closing </PP> tags to be <Module> and </Module> respectively. If you're creating a standard Protection Profile then these tags do not need to be changed.

7. Remove this content from the readme, up to the line below and customize. 

----

Protection Profile or Extended Package for QQQQ
===============

This repository hosts the draft version of the Protection Profile for QQQQ based on the 
[Essential Security Requirements (ESR)](https://commoncriteria.github.io/pp/QQQQ/QQQQ-esr.html) for this technology class of 
products. This repository is used to facilitate collaboration and development on the draft document. 
See the [release](#Release-Version) section if you are looking for the officially released version for evaluations. 
A list of products that have passed evaluation against this Protection Profile can be found [here](QQQQ).

## Draft Version

* [Protection Profile for QQQQ](https://commoncriteria.github.io/pp/QQQQ/QQQQ-release.html) (html)
* [Protection Profile for QQQQ](https://commoncriteria.github.io/pp/QQQQ/QQQQ-release.pdf) (pdf)

## Release Version
* [Protection Profile for QQQQ](QQQQ)

## Contributing

If you are interested in contributing directly to future versions the this Protection Profile, please consider joining the NIAP technical community.
* [How to join the NIAP Technical Community (Mailing list and updates)](https://www.niap-ccevs.org/NIAP_Evolution/tech_communities.cfm)

## Feedback

Questions, comments, and fixes can be submitted to the [repository issue tracker](https://github.com/commoncriteria/QQQQ/issues)

## Quickstart
To clone this project along with its _transforms_ submodule run:

````
  git clone --recursive git@github.com:commoncriteria/qqqq.git
````
To pull updates from the upstream _transforms_ submodule and commit them run:
````
 git submodule update --remote transforms
 git add transforms
 git commit
````

### Development Info
[Help working with Transforms Submodule](https://github.com/commoncriteria/transforms/wiki/Working-with-Transforms-as-a-Submodule)

## Repository Content
* input - Contains the 'meat' of the project. It's the input content (in XML form) that gets transformed to readable html.
* output - The output directory where the html is placed after transformation.
* output/images - The directory where images are stored
* transforms - Points to the transform subproject which is really a repository for resources shared amongst many Common Criteria projects.

## Links 
* [National Information Assurance Partnership (NIAP)](https://www.niap-ccevs.org/)
* [Common Criteria Portal](https://www.commoncriteriaportal.org/)

## License
See [License](./LICENSE)
