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
@Table(name = "personajes")
public class Personajes  implements Serializable {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "personaj_id")
    private int personajId;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "race_id")
    private int raceId;
   
    @Column(name = "weapon")
    private String weapon;
    
    @Column(name = "health")
    private int health;
    
    @Column(name = "damage")
    private int damage;
    
    @Column(name = "shield")
    private int shield;
     
    @ManyToOne
    @JoinColumn(name = "race_id",
            insertable = false, updatable = false,
            nullable = false)
    private Races race;

    public Personajes() {
    }

    public Personajes(String name, int race_id, String weapon, int health, int damage, int shield) {
       this.name = name;
       this.raceId = race_id;
       this.weapon = weapon;
       this.health = health;
       this.damage = damage;
       this.shield = shield;
    }
   
    public int getPersonajId() {
        return this.personajId;
    }
    
    public void setPersonajId(int personajId) {
        this.personajId = personajId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public int getRaceId() {
        return raceId;
    }

    public void setRaceId(int raceId) {
        this.raceId = raceId;
    }
    
    public String getWeapon() {
        return this.weapon;
    }
    
    public void setWeapon(String weapon) {
        this.weapon = weapon;
    }
    
    public int getHealth() {
        return this.health;
    }
    
    public void setHealth(int health) {
        this.health = health;
    }
    
    public int getDamage() {
        return this.damage;
    }
    
    public void setDamage(int damage) {
        this.damage = damage;
    }
    
    public int getShield() {
        return this.shield;
    }
    
    public void setShield(int shield) {
        this.shield = shield;
    }

    public Races getRace() {
        return race;
    }

    public void setRace(Races race) {
        this.race = race;
    }
    
    public int level()
    {
        return (health / 10) + 1;
    }
}
