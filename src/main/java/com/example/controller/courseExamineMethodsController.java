package com.example.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.object.courseExamineChildMethods;
import com.example.object.courseExamineMethods;
import com.example.service.impl.courseExamineChildMethodsServiceIMPL;
import com.example.service.impl.courseExamineMethodsServiceIMPL;
import com.example.utility.DataResponses;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api(tags="考核与评价方式")
@RestController
@RequestMapping("/courseExam")
public class courseExamineMethodsController {
    //课程考核项目
    @Autowired
    private courseExamineMethodsServiceIMPL courseExamineMethodsService;

    //课程考核子项目
    @Autowired
    private courseExamineChildMethodsServiceIMPL courseExamineChildMethodsService;

    //提供课程信息表的id查询所有有关信息
    @ApiOperation("提供课程信息表的id查询所有有关信息")
    @GetMapping("/allInformation/{courseId}")
    public DataResponses getAllInformationById(@PathVariable int courseId) {
        return new DataResponses(true, courseExamineMethodsService.getAllInformation(courseId));
    }

    //提供课程id查询考核项目
    @ApiOperation("提供课程id查询考核项目")
    @GetMapping("/courseExamineMethods/{courseId}")
    public DataResponses getCourseExamineMethodsById(@PathVariable int courseId) {
        QueryWrapper<courseExamineMethods> QueryWrapper = new QueryWrapper<>();
        QueryWrapper.eq("course_id", courseId);
        return new DataResponses(true, courseExamineMethodsService.list(QueryWrapper));
    }

    //提供考核项目id查询子考核项目
    @ApiOperation("提供考核项目id查询子考核项目")
    @GetMapping("/courseExamineChildMethods/{courseExamineMethodsId}")
    public DataResponses getCourseExamineChildMethodsById(@PathVariable int courseExamineMethodsId) {
        QueryWrapper<courseExamineChildMethods> QueryWrapper = new QueryWrapper<>();
        QueryWrapper.eq("course_examine_methods_id", courseExamineMethodsId);
        return new DataResponses(true, courseExamineChildMethodsService.list(QueryWrapper));
    }

    //提供课程id添加考核项目
    @ApiOperation("提供课程id添加考核项目")
    @PostMapping("/courseExamineMethods")
    public DataResponses addCourseExamineMethods(@RequestBody courseExamineMethods item) {
        return new DataResponses(courseExamineMethodsService.save(item));
    }

    //提供考核项目id添加子考核项目
    @ApiOperation("提供考核项目id添加子考核项目")
    @PostMapping("/courseExamineChildMethods")
    public DataResponses addCourseExamineChildMethods(@RequestBody courseExamineChildMethods item) {
        return new DataResponses(courseExamineChildMethodsService.save(item));
    }

    //提供考试项目id删除考核项目
    @ApiOperation("提供考试项目id删除考核项目")
    @DeleteMapping("/courseExamineMethods/{courseExamineMethodsId}")
    public DataResponses removeCourseExamineMethods(@PathVariable int courseExamineMethodsId) {
        return new DataResponses(courseExamineMethodsService.removeById(courseExamineMethodsId));
    }

    //提供考试子项目id删除考核子项目
    @ApiOperation("提供考试子项目id删除考核子项目")
    @DeleteMapping("/courseExamineChildMethods/{courseExamineChildMethodsId}")
    public DataResponses removeCourseExamineChildMethods(@PathVariable int courseExamineChildMethodsId) {
        return new DataResponses(courseExamineChildMethodsService.removeById(courseExamineChildMethodsId));
    }

    //提供考试项目id修改考核项目
    @ApiOperation("提供考试项目id修改考核项目")
    @PutMapping("/courseExamineMethods")
    public DataResponses modifyCourseExamineMethods(@RequestBody courseExamineMethods item) {
        return new DataResponses(courseExamineMethodsService.updateById(item));
    }

    //提供考试子项目id修改考核子项目
    @ApiOperation("提供考试子项目id修改考核子项目")
    @PutMapping("/courseExamineChildMethods")
    public DataResponses modifyCourseExamineChildMethods(@RequestBody courseExamineChildMethods item) {
        return new DataResponses(courseExamineChildMethodsService.updateById(item));
    }
}
