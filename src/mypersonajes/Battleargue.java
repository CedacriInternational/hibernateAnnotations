package mypersonajes;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "battleargue")
public class Battleargue  implements Serializable {
    
    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "battleargue_id")
    private int battleargueId;
    
    @Column(name = "argument")
    private String argument;
    
    @Column(name = "race_id")
    private int raceId;
    
    @Column(name = "level")
    private int level;
    
    @ManyToOne
    @JoinColumn(name = "race_id",
            insertable = false, updatable = false,
            nullable = false)
    private Races race;

    public Battleargue() {
    }

    public Battleargue(String argument, int raceId, int level) {
       this.argument = argument;
       this.raceId = raceId;
       this.level = level;
    }
   
    public int getBattleargueId() {
        return this.battleargueId;
    }
    
    public void setBattleargueId(int battleargueId) {
        this.battleargueId = battleargueId;
    }
    public String getArgument() {
        return this.argument;
    }
    
    public void setArgument(String argument) {
        this.argument = argument;
    }
    public int getRaceId() {
        return this.raceId;
    }
    
    public void setRaceId(int raceId) {
        this.raceId = raceId;
    }
    public int getLevel() {
        return this.level;
    }
    
    public void setLevel(int level) {
        this.level = level;
    }

    public Races getRace() {
        return race;
    }

    public void setRace(Races race) {
        this.race = race;
    }
}
