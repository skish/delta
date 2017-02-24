include <configuration.scad>
include <placements.scad>
use <vframe.scad>

module carriage(){
    cube([20,20,10],center=true);
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
