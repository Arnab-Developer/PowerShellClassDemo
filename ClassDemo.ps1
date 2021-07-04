using namespace System.Collections.Generic

class Student
{
    hidden [string] $FirstName
    hidden [string] $LastName
    hidden [uint] $Age

    Student([string] $firstName, [string] $lastName, [uint]$age)
    {
        $this.FirstName = $firstName
        $this.LastName = $lastName
        $this.Age = $age
    }

    [string] ToString()
    {
        [string] $output = [string]::Empty
        $output = [string]::Concat("Name: ", $this.FirstName, " ", $this.LastName, " Age:", $this.Age)
        return $output
    }
}

$students = [List[Student]]::new()

$students.Add([Student]::new("Jon", "Doe", 23))
$students.Add([Student]::new("Rahul", "Roy", 58))

foreach ($student in $students)
{
    Write-Output $student
}