package edu.ceu.programming.practices;
import java.util.Random;

public class Practice1 {
  public static double generatePiIterative(long steps) {
      Random random = new Random();
      long insideCircle = 0;

      for (long i = 0; i < steps; i++) {
          double x = random.nextDouble();
          double y = random.nextDouble();

          if (x * x + y * y <= 1) {
              insideCircle++;
          }
      }
      return 4.0 * insideCircle / steps;
  }
}
