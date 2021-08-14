package code.com.domain.controller;

import code.com.domain.model.Song;
import code.com.domain.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SongController {

    @Autowired
    private SongService songService;

    @GetMapping(value = "/")
    public String initialize() {
        return "index";
    }

    @GetMapping(value = "/song")
    public String registrationScreen() {
        return "song/register";
    }

    @GetMapping(value = "/song/details")
    public String getSong() {
        return "";
    }

    @PostMapping(value = "/song/add")
    public String addSong(Model model, Song song) {
        songService.include(song);

        model.addAttribute("message", "The song " + song.getTitle() + " successfully added to setlist!");

        return getList(model);
    }

    @GetMapping(value = "/song/{id}/delete")
    public String deleteSong(Model model, @PathVariable Integer id) {
        Song songDeleted = songService.getSongById(id);

        songService.delete(id);

        model.addAttribute("message", "Song " + songDeleted.getTitle() + " successfully deleted!");

        return getList(model);
    }

    @GetMapping(value = "/song/list")
    public String getList(Model model) {

        model.addAttribute("songs", songService.getList());

        return "song/list";
    }
}
