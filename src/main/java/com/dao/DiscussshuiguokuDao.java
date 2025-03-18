package com.dao;

import com.entity.DiscussshuiguokuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshuiguokuVO;
import com.entity.view.DiscussshuiguokuView;


/**
 * 水果库评论表
 * 
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
public interface DiscussshuiguokuDao extends BaseMapper<DiscussshuiguokuEntity> {
	
	List<DiscussshuiguokuVO> selectListVO(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
	
	DiscussshuiguokuVO selectVO(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
	
	List<DiscussshuiguokuView> selectListView(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);

	List<DiscussshuiguokuView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
	
	DiscussshuiguokuView selectView(@Param("ew") Wrapper<DiscussshuiguokuEntity> wrapper);
	
}
