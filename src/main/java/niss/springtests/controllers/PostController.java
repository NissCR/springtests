package niss.springtests.controllers;

import niss.springtests.dao.Post;
import niss.springtests.services.api.IPostService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {
    private final IPostService postService;

    public PostController(@Qualifier("dbPostService") IPostService postService) {
        this.postService = postService;
    }

    @GetMapping("/posts")
    public String posts(Model model) {
        model.addAttribute("posts", postService.search(""));
        return "posts";
    }
}
