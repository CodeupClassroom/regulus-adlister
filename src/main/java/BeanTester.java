import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BeanTester {
    public static void main(String[] args) throws ParseException {
        Album bts = new Album(1, "BTS", "Be", 2020, 2.69f, "K-pop");
        Album unwritten = new Album(2, "Natasha Bedingfield", "Unwritten", 2004, 3.5f, "Pop");
        Author shrek = new Author(1, "Shrek", "An Ogre");
        Quote quote = new Quote(1, "Better out than in, I always say.", shrek);

        List<Album> collectionOfAlbums = new ArrayList<>();
        collectionOfAlbums.add(bts);
        collectionOfAlbums.add(unwritten);

//        for (Album album : collectionOfAlbums) {
//            System.out.printf("One of my favorite albums is \"%s\" by the music act %s, which has sold %.2f million copies.%n", album.getName(), album.getArtist(), album.getSales());
//        }
//
//        System.out.printf("The wise philosopher %s %s once said \"%s\"%n", quote.getAuthor().getFirstName(), quote.getAuthor().getLastName(), quote.getContent());

        // Dates in Java

        Date date = new SimpleDateFormat("MM/dd/yyyy").parse("12/31/1999");
        System.out.println(date);

    }
}
