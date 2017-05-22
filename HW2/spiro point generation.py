import csv
import math

t = 0.01
pi = math.pi
R = 5
r = 1
a = 4
x0 = R+r-a
y0 = 0
nRev = 10
cos = math.cos
sin = math.sin
longitude = -118.288759
latitude = 34.021769

f = open('spiro.kml', 'w')

#Writing the kml file.
f.write("<?xml version='1.0' encoding='UTF-8'?>\n")
f.write("<kml xmlns='http://earth.google.com/kml/2.0'>\n")
f.write("<Document>\n<Style id='z1'>\n")
f.write("<IconStyle><Icon><href>http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png</href></Icon></IconStyle>\n")
f.write("</Style>\n")
while t <= pi*nRev:
    x = (R+r)*cos((float(r)/R)*t) - a*cos((1+float(r)/R)*t)
    y = (R+r)*sin((float(r)/R)*t) - a*sin((1+float(r)/R)*t)
    newlong = longitude + y*0.001
    newlat = latitude + x*0.001
    f.write("   <Placemark>\n")
    f.write("       <Point>\n")
    f.write("           <coordinates>" + str(newlong) + "," + str(newlat) + "</coordinates>\n")
    f.write("       </Point>\n")
    f.write("   </Placemark>\n")
    newlong = 0
    newlat = 0
    t = t + 0.01

f.write("</Document>\n")
f.write("</kml>\n")
print("kml file created successfully!!! ")

f.close()
