object p3
{
  def main (args: Array[String])
  {
    var i = 2
    var lim = 600851475143L
    while (lim > 1)
    {
      if (lim % i == 0) {
	lim = lim / i
	println(i)
      }
      i += 1
    }
  }
}
