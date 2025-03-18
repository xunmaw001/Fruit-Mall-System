package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshuiguokuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshuiguokuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshuiguokuView;


/**
 * 水果库评论表
 *
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
public interface DiscussshuiguokuService extends IService<DiscussshuiguokuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshuiguokuVO> selectListVO(Wrapper<DiscussshuiguokuEntity> wrapper);
   	
   	DiscussshuiguokuVO selectVO(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
   	
   	List<DiscussshuiguokuView> selectListView(Wrapper<DiscussshuiguokuEntity> wrapper);
   	
   	DiscussshuiguokuView selectView(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshuiguokuEntity> wrapper);
   	
}

