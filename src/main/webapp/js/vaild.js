function checkIdCard(str) {
    //15位数身份证正则表达式
    var arg1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
    if (str.match(arg1) == null) {
        return false;
    }
    else {
        return true;
    }
}

function checkPhone(strPhone) {
    if(!(/^[1](([3][0-9])|([4][5-9])|([5][0-3,5-9])|([6][5,6])|([7][0-8])|([8][0-9])|([9][1,8,9]))[0-9]{8}$/.test(strPhone))){
        return false;
    }else{
        return true;
    }
}

// pass: [/(.+){6,12}$/, '密码必须6到12位']