package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShuiguokuEntity;
import com.entity.view.ShuiguokuView;

import com.service.ShuiguokuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 水果库
 * 后端接口
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
@RestController
@RequestMapping("/shuiguoku")
public class ShuiguokuController {
    @Autowired
    private ShuiguokuService shuiguokuService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShuiguokuEntity shuiguoku, HttpServletRequest request){

        EntityWrapper<ShuiguokuEntity> ew = new EntityWrapper<ShuiguokuEntity>();
    	PageUtils page = shuiguokuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuiguoku), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShuiguokuEntity shuiguoku, HttpServletRequest request){
        EntityWrapper<ShuiguokuEntity> ew = new EntityWrapper<ShuiguokuEntity>();
    	PageUtils page = shuiguokuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuiguoku), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShuiguokuEntity shuiguoku){
       	EntityWrapper<ShuiguokuEntity> ew = new EntityWrapper<ShuiguokuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shuiguoku, "shuiguoku")); 
        return R.ok().put("data", shuiguokuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShuiguokuEntity shuiguoku){
        EntityWrapper< ShuiguokuEntity> ew = new EntityWrapper< ShuiguokuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shuiguoku, "shuiguoku")); 
		ShuiguokuView shuiguokuView =  shuiguokuService.selectView(ew);
		return R.ok("查询水果库成功").put("data", shuiguokuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ShuiguokuEntity shuiguoku = shuiguokuService.selectById(id);
		shuiguoku.setClicknum(shuiguoku.getClicknum()+1);
		shuiguoku.setClicktime(new Date());
		shuiguokuService.updateById(shuiguoku);
        return R.ok().put("data", shuiguoku);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        ShuiguokuEntity shuiguoku = shuiguokuService.selectById(id);
		shuiguoku.setClicknum(shuiguoku.getClicknum()+1);
		shuiguoku.setClicktime(new Date());
		shuiguokuService.updateById(shuiguoku);
        return R.ok().put("data", shuiguoku);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShuiguokuEntity shuiguoku, HttpServletRequest request){
    	shuiguoku.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuiguoku);

        shuiguokuService.insert(shuiguoku);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShuiguokuEntity shuiguoku, HttpServletRequest request){
    	shuiguoku.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shuiguoku);

        shuiguokuService.insert(shuiguoku);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShuiguokuEntity shuiguoku, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shuiguoku);
        shuiguokuService.updateById(shuiguoku);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shuiguokuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ShuiguokuEntity> wrapper = new EntityWrapper<ShuiguokuEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = shuiguokuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,ShuiguokuEntity shuiguoku, HttpServletRequest request,String pre){
        EntityWrapper<ShuiguokuEntity> ew = new EntityWrapper<ShuiguokuEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = shuiguokuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shuiguoku), params), params));
        return R.ok().put("data", page);
    }


}
