package niss.springtests.controllers;

import niss.springtests.services.api.IPostService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    private final IPostService postService;

    public IndexController(@Qualifier("dbPostService") IPostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("posts", postService.getThreeLast());
        return "index";
    }
}
