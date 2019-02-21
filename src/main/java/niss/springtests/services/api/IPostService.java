package niss.springtests.services.api;

import niss.springtests.dao.Post;

import java.util.List;

public interface IPostService {
    List<Post> search(String query);
    List<Post> getThreeLast();
}
