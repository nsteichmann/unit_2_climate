#Boolean Logic 2022-02-01

vec = c(1, 0, 2, 1)
vec[c(F, T, T, F)]

x = 2
x<4
x>3
x %in% vec
x == vec

world_oceans = data.frame(ocean = c("Atlantic", "Pacific", "Indian", "Arctic", "Southern"),
                          area_km2 = c(77e6, 156e6, 69e6, 14e6, 20e6),
                          avg_depth_m = c(3926, 4028, 3963, 3953, 4500))
world_oceans$avg_depth_m > 4000

world_oceans[world_oceans$avg_depth_m > 4000, "ocean"]
world_oceans$ocean[world_oceans$avg_depth_m>4000]

sum(c(1,2,3))
sum(world_oceans$avg_depth_m > 4000) 

3 == 2 +1
0.3 == 0.1 + 0.2
0.3 - (0.1 +0.2)

error_threshold = 0.0000001
abs(0.3 - (0.1 + 0.2)) < error_threshold

world_oceans[world_oceans$avg_depth_m < 4000 & world_oceans$area_km2 < 50e6, ]

vec = c(1, 2, 3, NA)
vec == NA
is.na(vec)

any(is.na(vec))
all(is.na(vec))

num = -2

num = 2
if (num<0){
  print("Oh crap, num in negative")
  num =  num * -1
  print("I turned num into a positive number")
} else{"Don't worry, num was positive"}

num


temp = 103
if (temp<=98.6){
  print("no fever, you are fine")
} else{if (temp>98.6 & temp <=101){
  print("low fever, see doctor soon")
} else{if (temp>101){
  print("high fever, get yo ass to the doc ASAP")
}}
}


# else if statements

a = 70
b = 65

if(a>b){
  print("a won!")
}else if(a<b){
  print("b won!")
}else{
  print("it was a tie")
}

# the ifelse() function

a = c(8, 13, 0, -6, 4, 16, 25, 2)
reciprocal = ifelse(a!=0, 1/a, NA)
reciprocal
my_data = cbind(a, reciprocal)
my_data
