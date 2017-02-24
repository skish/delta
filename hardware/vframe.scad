include <configuration.scad>

module vframe(){
    linear_extrude(height=vframe_l)
    polygon(points=[[0,0],[vframe_s,0],[vframe_s,vframe_w],[vframe_w,vframe_w],[vframe_w,vframe_s],[0,vframe_s]]);
}

vframe();