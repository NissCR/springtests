package niss.springtests.jpa;

import niss.springtests.dao.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post, Integer> {
    List<Post> findAllByTitleLikeOrDescriptionLike(String title, String description);
}
