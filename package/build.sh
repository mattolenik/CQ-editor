#!/bin/bash -ex

WD=/wd
mamba_env=cq

mamba env create -f $WD/cqgui_env.yml -n $mamba_env
mamba install -n $mamba_env cadquery
mamba run -n $mamba_env pip install $WD

dist="$WD/build/dist"
app_dist="$dist/CadQuery.app"
app_skeleton="$WD/package/macos/CadQuery.app" 

rm -rf $app_dist
cp -f -R -L $app_skeleton $dist/
cp -f -R -L /opt/conda/envs/$mamba_env/ $app_dist/Contents/Resources/

