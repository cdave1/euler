
object p1
{
  // First attempt:
  def p1add(x: Int) = if (x % 3 == 0 || x % 5 == 0) x else 0
  def a(x: Int, y: Int) : Int = if(x >= 1000) y else a(x+1, y+p1add(x))

  // Second attempt:
  def b() = List.range(0,1000).foldLeft(0) { (t,n) => if (n % 3 == 0 || n % 5 == 0) t + n else t }

  // Reduce
  def c() = List.range(0,1000).reduceLeft[Int] { (t,n) => if (n % 3 == 0 || n % 5 == 0) t + n else t }

  def main(args: Array[String])
  {
    println(a(0,0))
    println(b())
    println(c())
  }
}
