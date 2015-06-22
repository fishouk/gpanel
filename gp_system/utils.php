<?php
function clear_string($str, $check = false){
	$ret = strip_tags(trim($str));
	if($check == true){
		if($str != $ret){
			return false;
		}
	}
	return $ret;
}
function verify_int($int, $min = false, $max = false){
	if(is_int($int)){ // Если входящее значение целочисленное
		if($min == true){ // Если есть входящий параметр - минимальное значение
			if(strlen($int) >= $min){ // Если входящее значение больше или равно минимальному значению
				if($max == true){ // Если есть входящий параметр - максимальное значение
					if(strlen($int) <= $max){ // Если входящее значение больше или равно максимальному значению
						return $int; // Возвращаем обратно входящее значение, с ним всё ок
					}else{
						return false; // Возвращаем ошибку в связи с тем, что значение больше допустимого
					}
				}else{
					return $int; // Возвращаем обратно входящее значение, с ним всё ок
				}
			}else{
				return false; // Возвращаем ошибку в связи с тем, что значение меньше допустимого
			}
		}else{
			return $int; // Возвращаем обратно входящее значение, с ним всё ок
		}
	}else{
		return false; // Возвращаем ошибку в связи с тем, что значение не целочисленное
	}
}