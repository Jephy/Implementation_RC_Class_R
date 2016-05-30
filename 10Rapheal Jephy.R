Res<-setRefClass("Student",
                 fields=list(studentId="character",
                             subjectId="character",
                             percent="integer",
                             Grade="character"),
                 methods=list(
                   generateGrade=function()
                   {
                     ifelse(percent<0,grade<<-"NA",
                      ifelse(percent>=0 && percent<40,Grade<<-"E",
                        ifelse(percent>=40 && percent<50,Grade<<-"D",
                          ifelse(percent>=50 && percent<60,Grade<<-"C",
                             ifelse(percent>=60 && percent<70,Grade<<-"B",
                                ifelse(percent>=70 && percent<100,Grade<<-"A",Grade<<-"NA"))))))
                   },
                   display=function(){
                     cat("Student ID: ",studentId,"\n")
                     cat("subject ID: ",subjectId,"\n")
                     cat("Percentage: ",percent,"\n")
                     cat("Grade: ",Grade,"\n")
                   }
                 ))
#Generating 10 result	objects
s1<-Res$new(studentId="11111111",subjectId="CT51234",percent=30L)
s2<-Res$new(studentId="11111112",subjectId="CT51235",percent=50L)
s3<-Res$new(studentId="11111113",subjectId="CT51236",percent=60L)
s4<-Res$new(studentId="11111114",subjectId="CT51237",percent=80L)
s5<-Res$new(studentId="11111115",subjectId="CT51238",percent=55L)
s6<-Res$new(studentId="11111116",subjectId="CT51239",percent=65L)
s7<-Res$new(studentId="11111117",subjectId="CT51234",percent=45L)
s8<-Res$new(studentId="11111118",subjectId="CT51235",percent=52L)
s9<-Res$new(studentId="11111119",subjectId="CT51236",percent=40L)
s10<-Res$new(studentId="11111120",subjectId="CT51237",percent=110L)

#Generating dates by calling RC class method generateGrade()
s1$generateGrade()
s2$generateGrade()
s3$generateGrade()
s4$generateGrade()
s5$generateGrade()
s6$generateGrade()
s7$generateGrade()
s8$generateGrade()
s9$generateGrade()
s10$generateGrade()

f<-c(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10)
invisible(sapply(f,function(x) x$display()))