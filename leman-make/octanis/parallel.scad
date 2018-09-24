$fn=40;

use <../pcbbox/box.scad>;

box(
    width=70,
    height=30,
    depth=40,
    thickness=3,
    fingerWidth=6,
    labelsSize=8, 
    showLabels=false,
    labels=["Top","Bottom","Left","Right","Front","Back"],
    3d=false,
    space=4,
    extends=[0,3,0,0,0,0],
    active=[1,1,1,1,1,1],  // side that should be displayed
    holes=[]
);
