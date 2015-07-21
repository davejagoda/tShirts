package main
import "fmt"

func main() {
  const s = "andreessenhorowitz"
  fmt.Printf("%c%d%c\n",
    s[0], len(s)-2, s[len(s)-1])
}
