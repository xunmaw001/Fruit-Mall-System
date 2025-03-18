package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShuiguokuDao;
import com.entity.ShuiguokuEntity;
import com.service.ShuiguokuService;
import com.entity.vo.ShuiguokuVO;
import com.entity.view.ShuiguokuView;

@Service("shuiguokuService")
public class ShuiguokuServiceImpl extends ServiceImpl<ShuiguokuDao, ShuiguokuEntity> implements ShuiguokuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShuiguokuEntity> page = this.selectPage(
                new Query<ShuiguokuEntity>(params).getPage(),
                new EntityWrapper<ShuiguokuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShuiguokuEntity> wrapper) {
		  Page<ShuiguokuView> page =new Query<ShuiguokuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShuiguokuVO> selectListVO(Wrapper<ShuiguokuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShuiguokuVO selectVO(Wrapper<ShuiguokuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShuiguokuView> selectListView(Wrapper<ShuiguokuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShuiguokuView selectView(Wrapper<ShuiguokuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
