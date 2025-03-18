package com.entity.view;

import com.entity.ShuiguokuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 水果库
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-17 22:48:29
 */
@TableName("shuiguoku")
public class ShuiguokuView  extends ShuiguokuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShuiguokuView(){
	}
 
 	public ShuiguokuView(ShuiguokuEntity shuiguokuEntity){
 	try {
			BeanUtils.copyProperties(this, shuiguokuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
