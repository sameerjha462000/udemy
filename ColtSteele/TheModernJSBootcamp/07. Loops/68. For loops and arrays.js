const examScores = [98, 77, 84, 91, 57, 66];


for(let i = 0; i < examScores.length ; i++){
    console.log(examScores[i]);
}

const myStudents = [
    {
        firstName   : 'Zeus',
        grade       : 86
    },
    {
        firstName   : 'Artemis',
        grade       : 97
    },
    {
        firstName   : 'Hera',
        grade       : 72
    },
    {
        firstName   : 'Apollo',
        grade       : 90
    }
];

// PRINT NAMES OF ALL THE STUDENTS AND THEIR RESPECTIVE GRADES
for(let i = 0;i < myStudents.length;i++){
    console.log(myStudents[i].firstName + " " + myStudents[i].grade);
}

// SECOND WAY
for(let i = 0;i < myStudents.length;i++){
    console.log(`${myStudents[i].firstName} ${myStudents[i].grade}`);
}

// CALCULATE THE AVG GRADE OF THE CLASS
let sum = 0;

for(let i = 0;i < myStudents.length;i++){
    sum += myStudents[i].grade;
}

console.log(`The average grade of the class is ${sum/(myStudents.length)}`);






