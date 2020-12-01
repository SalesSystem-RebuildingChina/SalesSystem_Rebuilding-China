package serviceImpl;

import mapper.FrontMapper;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import service.FrontService;

import java.util.List;
import java.util.Map;

@Service
public class FrontServiceImpl implements FrontService {

    @Autowired
    private FrontMapper frontMapper;

    @Override
    public List<Map<String, Object>> seleteAll(){
        return frontMapper.getAll();
    }
}
