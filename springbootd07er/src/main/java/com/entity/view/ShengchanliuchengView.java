package com.entity.view;

import com.entity.ShengchanliuchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 生产流程
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-19 15:00:26
 */
@TableName("shengchanliucheng")
public class ShengchanliuchengView  extends ShengchanliuchengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShengchanliuchengView(){
	}
 
 	public ShengchanliuchengView(ShengchanliuchengEntity shengchanliuchengEntity){
 	try {
			BeanUtils.copyProperties(this, shengchanliuchengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
