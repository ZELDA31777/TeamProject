package com.hanulso.mapper;

// mapper.xml에서 test에 넣을 메서드
public class TestMethod {
	
	// 배열안에 특정값 x가 들어있는지 확인
	public static boolean isInX(int[] arr, int x) {
		for (int val : arr) {
			if (val == x) {
				return true;
			}
		}
		return false;
	}
}
