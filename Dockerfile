FROM mtmiller/octave
RUN curl -L -S --retry 5 https://www.artefact.tk/software/matlab/m2html/m2html.zip --output /m2html.zip
RUN unzip /m2html.zip -d / && rm m2html.zip

