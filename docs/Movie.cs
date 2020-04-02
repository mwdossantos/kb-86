public class Movie
{
    public string name { get; set; }
    public string releaseDate { get; set; }
    public string coverArt { get; set; }
}

public class Planet
{
    public string name { get; set; }

    public string[] movies { get; set; }
}

class Logic
{

    // Array that will store retrieved movies from the JSON.
    Movie[] movies;

    // Array that will store retrieved planets from the JSON
    Planet[] planets;

    void GetJson()
    {
        // Handle request to retrieve json files
        // Serialize to json

        // Because there is no JSON to serialize from we just define the planets here

        // Earth
        Planet earth = new Planet()
        {
            name = "Earth",
            movies = new string["Star Wars"]
        };

        // Moon
        Planet moon = new Planet()
        {
            name = "Moon",
            movies = new string["Star Wars"]
        };

        // Create an array of planets and add the earth and moon objects we just made to it
        planets = new Planet[]
        {
            earth,
            moon
        };

        // Now since we also dont have movies.json we will define the movies here and
        // add them to an array as well.
        // Normally you would deserialize the json file here into the array

        // Star wars
        Movie starWars = new Movie()
        {
            name = "Star Wars",
            releaseDate = "30/11/1999",
            coverArt = "http://test.com/image.png"
        };

        // Add the movies to the array
        movies = new Movie[]
        {
            starWars
        };
    }


    // This function returns an array of movies that feature a planet
    Movie[] GetMoviesForAPlanet(string[] planetMovies)
    {
        // Create the array that we will return
        Movie[] returnMovies = new Movie[planetMovies.Length];

        // Now find all movie objects for this planet
        // We do this by looping through the planet's movies array we passed as param.
        int count = 0;
        foreach (string movieName in planetMovies)
        {
            // Now get the movie object from the Movies array and add to the return
            // array.
            // We do this by looping through all movies array.
            foreach (Movie movie in movies)
            {
                // Check if the name of the current movie == to this movie's name
                if (movie.name == movieName)
                {
                    // Add the movie to our return array
                    returnMovies[count] = movie;
                }
            }
            count++;
        }

        // All done. Should have every movie
        return returnMovies;
    }

}