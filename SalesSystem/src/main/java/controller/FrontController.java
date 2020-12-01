package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.FrontService;
import serviceImpl.FrontServiceImpl;

import java.util.List;
import java.util.Map;

@Controller
public class FrontController {

    @Autowired(required = true)
    private FrontService frontService;

    @RequestMapping("/test.do")
    public @ResponseBody String test(){
        return "Hello 龚sir";
    }

    @RequestMapping("/getAll.do")
    public @ResponseBody List<Map<String, Object>> getAll(){
        return frontService.seleteAll();
    }
}
