$fn=40;

use <../pcbbox/box.scad>;

scale=2/3;

width=104.5;
thickness=3;

cell=[
    (34.29+52.975)/2*scale,
    15*scale,
    14*scale,
    14*scale
];

screen=[
    (width-3*thickness)/2*scale,
    (40.5 + 25.1/2)*scale,
    71.6*scale,
    25.1*scale
];

rotary=[
    75.05*scale,
    15*scale,
    9*scale
];

box(
    width=width*scale,
    depth=82*scale,
    height=33.3*scale,
    thickness=thickness,
    fingerWidth=6,
    labelsSize=10, 
    showLabels=false,
    extends=[0,3,0,0,0,0],
    labels=["Top","Bottom","Left","Right","Front","Back"],
    3d=false,
    space=2,
    active=[1,1,1,1,1,1],  // side that should be displayed
    holes=[ // relative to the inside of the box
        [
            cell,
            screen, 
            rotary
        ],
    ]
);
