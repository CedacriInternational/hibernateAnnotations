package mypersonajes;

import java.util.Set;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.IndexColumn;

@Entity
@Table(name = "races")
public class Races  implements Serializable {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "race_id")
    private Integer raceId;
    
    @Column(name = "race")
    private String race;
    
    @OneToMany(cascade = {CascadeType.ALL})
    @JoinColumn(name = "race_id")
    @IndexColumn(name = "race_id")
    private Set <Personajes> personajes;
    
    @OneToMany(cascade = {CascadeType.ALL})
    @JoinColumn(name = "race_id")
    @IndexColumn(name = "race_id")
    private Set <Battleargue> battleargues;

    public Races() {
    }

    public Races(String race) {
       this.race = race;
    }
   
    public Integer getRaceId() {
        return this.raceId;
    }
    
    public void setRaceId(Integer raceId) {
        this.raceId = raceId;
    }
    public String getRace() {
        return this.race;
    }
    
    public void setRace(String race) {
        this.race = race;
    }

    public Set <Personajes> getPersonajes() {
        return personajes;
    }

    public void setPersonajes(Set <Personajes> personajes) {
        this.personajes = personajes;
    }

    public Set <Battleargue> getBattleargues() {
        return battleargues;
    }

    public void setBattleargues(Set <Battleargue> battleargues) {
        this.battleargues = battleargues;
    }
}

