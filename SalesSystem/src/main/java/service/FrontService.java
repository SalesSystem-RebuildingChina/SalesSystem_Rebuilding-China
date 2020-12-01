package service;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Repository
@Service
public interface FrontService {
    List<Map<String, Object>> seleteAll();
}
