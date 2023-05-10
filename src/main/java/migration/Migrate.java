package migration;

import org.flywaydb.core.Flyway;

public class Migrate {

    public static void main(String[] args){
        Flyway flyway = Flyway.configure()
                .dataSource("jdbc:mysql://localhost:3306/db","root","password")
                .load();

        flyway.migrate();
        System.exit(0);
    }
}
