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


import com.dao.DiscussshuiguokuDao;
import com.entity.DiscussshuiguokuEntity;
import com.service.DiscussshuiguokuService;
import com.entity.vo.DiscussshuiguokuVO;
import com.entity.view.DiscussshuiguokuView;

@Service("discussshuiguokuService")
public class DiscussshuiguokuServiceImpl extends ServiceImpl<DiscussshuiguokuDao, DiscussshuiguokuEntity> implements DiscussshuiguokuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshuiguokuEntity> page = this.selectPage(
                new Query<DiscussshuiguokuEntity>(params).getPage(),
                new EntityWrapper<DiscussshuiguokuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshuiguokuEntity> wrapper) {
		  Page<DiscussshuiguokuView> page =new Query<DiscussshuiguokuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshuiguokuVO> selectListVO(Wrapper<DiscussshuiguokuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshuiguokuVO selectVO(Wrapper<DiscussshuiguokuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshuiguokuView> selectListView(Wrapper<DiscussshuiguokuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshuiguokuView selectView(Wrapper<DiscussshuiguokuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
