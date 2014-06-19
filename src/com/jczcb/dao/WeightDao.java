package com.jczcb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jczcb.bean.WeightInfo;

/**
 * @author Lawliet
 */
public class WeightDao {
	private List<WeightInfo> list = new ArrayList<WeightInfo>();
	private Conn conn;

	public List<WeightInfo> getWeightAll() {
		String sql = "select a.check_id, a.check_number, b.co_short, c.car_number, a.check_chengzhong, a.check_kaipiao, a.check_zhuangzai, a.check_loadingWeight, a.check_date from checkInfoCo AS a,dict_resourceCo AS b,dict_car AS c where(a.check_resourceCo = b.co_id) AND (a.check_car = c.car_id)";
		list = getWeigthList(sql);
		return list;
	}

	public List<WeightInfo> getWeightByNumber(String number) {
		String sql = "select a.check_id, a.check_number, b.co_short, c.car_number, a.check_chengzhong, a.check_kaipiao, a.check_zhuangzai, a.check_loadingWeight, a.check_date from checkInfoCo AS a,dict_resourceCo AS b,dict_car AS c where(a.check_resourceCo = b.co_id) AND (a.check_car = c.car_id) AND (a.check_number like '%"
				+ number
				+ "%' or a.check_number like '"
				+ number
				+ "%' or a.check_number like '%" + number + "')";
		list = getWeigthList(sql);
		return list;
	}

	public List<WeightInfo> getWeightByCar(String car) {
		String sql = "select a.check_id, a.check_number, b.co_short, c.car_number, a.check_chengzhong, a.check_kaipiao, a.check_zhuangzai, a.check_loadingWeight, a.check_date from checkInfoCo AS a,dict_resourceCo AS b,dict_car AS c where(a.check_resourceCo = b.co_id) AND (a.check_car = c.car_id) AND (c.car_number like '%"
				+ car
				+ "%' or c.car_number like '"
				+ car
				+ "%' or c.car_number like '%" + car + "')";
		list = getWeigthList(sql);
		return list;
	}

	public List<WeightInfo> getWeightByDate(String date, String dateAfter) {
		String sql = "select a.check_id, a.check_number, b.co_short, c.car_number, a.check_chengzhong, a.check_kaipiao, a.check_zhuangzai, a.check_loadingWeight, a.check_date from checkInfoCo AS a,dict_resourceCo AS b,dict_car AS c where(a.check_resourceCo = b.co_id) AND (a.check_car = c.car_id) AND (a.check_date between '"
				+ date + "' and '" + dateAfter + "')";
		list = getWeigthList(sql);
		return list;
	}

	public List<WeightInfo> getWeightByFromW(String resource) {
		String sql = "select a.check_id, a.check_number, b.co_short, c.car_number, a.check_chengzhong, a.check_kaipiao, a.check_zhuangzai, a.check_loadingWeight, a.check_date from checkInfoCo AS a,dict_resourceCo AS b,dict_car AS c where(a.check_resourceCo = b.co_id) AND (a.check_car = c.car_id) AND (b.co_short like '%"
				+ resource
				+ "%' or b.co_short like '"
				+ resource
				+ "%' or b.co_short like '%" + resource + "')";
		list = getWeigthList(sql);
		return list;
	}

	private List<WeightInfo> getWeigthList(String sql) {
		try {
			conn = new Conn(sql);
			ResultSet rs = conn.executeQuery();
			while (rs.next()) {
				WeightInfo weight = new WeightInfo();
				weight.setId(rs.getInt(1));
				weight.setNumber(rs.getString(2));
				weight.setResource(rs.getString(3));
				weight.setCar(rs.getString(4));
				weight.setWeightMember(rs.getString(5));
				weight.setDrawer(rs.getString(6));
				weight.setLoadingMember(rs.getString(7));
				weight.setWeight(rs.getDouble(8));
				weight.setDate(rs.getTimestamp(9));
				list.add(weight);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
