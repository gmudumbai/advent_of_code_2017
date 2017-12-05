package main

import (
  "fmt"
  "bufio"
  "os"
  "strings"
  "strconv"
)

func main() {
  sum := 0
  file, _ := os.Open("day_2_1.txt")
  
  scanner := bufio.NewScanner(file)
  for scanner.Scan() {
    stringArray := strings.Split(scanner.Text(), " ")[:]
    smallest, _ := strconv.Atoi(stringArray[0])
    biggest, _ := strconv.Atoi(stringArray[0])
    
    for _, v := range stringArray {
      comp_int, _ := strconv.Atoi(v)
      
      if comp_int > biggest {
        biggest = comp_int
      }
      if comp_int < smallest {
        smallest = comp_int
      }
    }
    
    sum += (biggest - smallest)
  }
  
  fmt.Println(sum)
}