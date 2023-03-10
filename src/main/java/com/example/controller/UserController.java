package com.example.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.object.User;
import com.example.service.impl.UserServiceIMPL;

import com.example.utility.DataResponses;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;



@Api(tags = "用户登录")
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceIMPL userService;

    @ApiOperation("登录接口")
    @PostMapping
    public DataResponses submit(@RequestBody User data){
        QueryWrapper<User> QueryWrapper = new QueryWrapper<>();
        QueryWrapper.eq("name",data.getName()).eq("password",data.getPassword());
        User user = userService.getOne(QueryWrapper);
        return new DataResponses(user != null,user);
    }

    @ApiOperation("按id修改")
    @PutMapping()
    public DataResponses UpdateById(@RequestBody User data) {
        return new DataResponses(userService.updateById(data));
    }

    @ApiOperation("添加")
    @PostMapping("/regin")
    public DataResponses write(@RequestBody User pages) {
        return new DataResponses(userService.save(pages));
    }

    @ApiOperation("删除")
    @DeleteMapping
    public DataResponses delete(@RequestBody User pages) {
        return new DataResponses(userService.removeById(pages));
    }

}