package com.data.projectX;

public interface ActorsDAO {
	
   public int insertActors(Actors ac);
   
   public Actors getActors(String userName, String password);
   
}
