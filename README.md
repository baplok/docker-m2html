Octave docker image with [m2html](https://www.artefact.tk/software/matlab/m2html/)
pre-downloaded inside.

Based on [mtmiller/octave](https://hub.docker.com/r/mtmiller/octave) image.

# Usage

Mount the working folder to container and call m2html with appropriate arguments
to get the documentation.


# Example

Clone any MATLAB project to the local folder:
```
git clone https://github.com/trekhleb/machine-learning-octave.git
```

Generate the documentation and save it to `autodoc` folder:

```shell
docker run --rm --volume "`pwd`:/src" m2html octave --eval "addpath m2html; m2html('mfiles', 'src/machine-learning-octave', 'htmldir', '/src/autodoc', 'recursive', 'on')"
```

