FROM finback9/paraview-base:0.1

RUN curl -s https://dl.openfoam.com/add-debian-repo.sh | bash
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y locales vim less sudo gnuplot-qt openfoam2506-default && \
    apt-get clean 

RUN pip install --upgrade pip && \
    pip install numpy scipy matplotlib pandas nodejs simpy pyxel openpyxl \
    jupyter jupyterlab bash_kernel gnuplot_kernel PyFoam \
    cython docutils zeroconf ipdb xlwt xlrd && \
    python -m bash_kernel.install && \
    python -m gnuplot_kernel install
