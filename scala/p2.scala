object p2 { 
  def fib(a: Int, b: Int, lst: List[Int]) : List[Int] = if (a+b <= 4000000) fib(b, a+b, (a+b)::lst) else lst  
  def a() = fib(0,1,List(0)).reduceLeft[Int] { (t,n) => if (n % 2 == 0) t+n else t }

  def main(args: Array[String])
  {
    println(a())
  }
}
