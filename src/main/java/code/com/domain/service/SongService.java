package code.com.domain.service;

import code.com.domain.model.Song;
import code.com.domain.repository.SongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongService {

    @Autowired
    private SongRepository songRepository;

    public List<Song> getList() {
        return (List<Song>) songRepository.findAll(Sort.by(Sort.Direction.ASC, "title"));
    }

    public List<Song> getList(String field) {
        return (List<Song>) songRepository.findAll(Sort.by(Sort.Direction.ASC, field));
    }

    public Song getSongById(Integer id) {
        return songRepository.findById(id).orElse(null);
    }

    public void include(Song song) {
        songRepository.save(song);
    }

    public void delete(Integer id) {
        songRepository.deleteById(id);
    }
}
