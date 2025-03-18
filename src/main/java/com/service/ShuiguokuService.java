package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShuiguokuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShuiguokuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShuiguokuView;


/**
 * 水果库
 *
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
public interface ShuiguokuService extends IService<ShuiguokuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShuiguokuVO> selectListVO(Wrapper<ShuiguokuEntity> wrapper);
   	
   	ShuiguokuVO selectVO(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
   	
   	List<ShuiguokuView> selectListView(Wrapper<ShuiguokuEntity> wrapper);
   	
   	ShuiguokuView selectView(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShuiguokuEntity> wrapper);
   	
}

