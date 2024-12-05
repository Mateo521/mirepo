import java.util.stream.*;
package music;
public class Main {
    public static int addup(Stream<Integer> nums) {
        return nums.reduce(0, Integer::sum);
    }


  

    public static void main(String[] args) {
        Stream<Integer> numbers = Stream.of(1, 2, 3, 4, 5);
        int sum = addup(numbers);
        System.out.println("La suma es: " + sum);

        long count = allArtists.stream()
        .filter(artist -> {
        System.out.println(artist.getName());
        return artist.isFrom("London");
        });


    }


    
}
