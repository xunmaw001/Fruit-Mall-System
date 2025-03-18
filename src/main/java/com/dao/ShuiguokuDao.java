package com.dao;

import com.entity.ShuiguokuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShuiguokuVO;
import com.entity.view.ShuiguokuView;


/**
 * 水果库
 * 
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
public interface ShuiguokuDao extends BaseMapper<ShuiguokuEntity> {
	
	List<ShuiguokuVO> selectListVO(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
	
	ShuiguokuVO selectVO(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
	
	List<ShuiguokuView> selectListView(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);

	List<ShuiguokuView> selectListView(Pagination page,@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
	
	ShuiguokuView selectView(@Param("ew") Wrapper<ShuiguokuEntity> wrapper);
	
}
