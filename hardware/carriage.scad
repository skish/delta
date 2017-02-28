include <configuration.scad>
include <placements.scad>
use <vframe.scad>



module carriage(){
    vframe_diagonal = vframe_s*sqrt(2);
    base_height = c_i_wheel_dist+c_wheel_mnt_dia;
    base_width = vframe_diagonal + vframe_w*sqrt(2) + carriage_clearance;
    cube([base_height,base_width,carriage_base_depth]);
}

module c_wheel(r){
    rotate_extrude() 
    {
    translate([r-c_wheel_o_r,0,0]) circle(r=c_wheel_o_r);
    translate([0,-c_wheel_o_r,0]) square(size=[r-c_wheel_o_r,2*c_wheel_o_r]);
    }
}
c_wheel(25);
carriage();
//color(aluminum ) vframe(); 
//carriage2vframe() carriage();
