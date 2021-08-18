package code.com.domain.repository;

import code.com.domain.model.Song;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SongRepository extends CrudRepository<Song, Integer> {

     public List<Song> findAll(Sort sort);
}
