package niss.springtests.services.impl;

import niss.springtests.dao.Post;
import niss.springtests.jpa.PostRepository;
import niss.springtests.services.api.IPostService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DbPostService implements IPostService {
    private final PostRepository postRepository;

    public DbPostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    @Override
    public List<Post> search(String query) {
        return query != null && !query.isEmpty() ?
                postRepository.findAllByTitleLikeOrDescriptionLike("%" + query + "%", "%" + query + "%")
                :
                postRepository.findAll();
    }

    @Override
    public List<Post> getThreeLast() {
        List<Post> result = postRepository.findAll();
        if(!result.isEmpty()){
            result = result.subList(result.size() - 3, result.size());
        }
        return result;
    }
}
