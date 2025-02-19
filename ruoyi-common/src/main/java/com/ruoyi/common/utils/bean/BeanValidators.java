package com.ruoyi.common.utils.bean;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import javax.validation.Validator;
import java.util.Set;

/**
 * bean对象属性验证
 *
 * @author ruoyi
 */

//  xx @Validate 是在controller判断实体类 @ 不能空规定之类的 现在这个是导入不走controller 所以得走这样的方式
//  xx Validator  JSR 380（Bean Validation 2.0）标准提供的验证器接口，用于校验 Java 《对象的字段约束》
//    使用 JSR 380 标准的验证机制，对 Java 对象的字段进行约束校验（如 @NotNull、@Size 等）。
public class BeanValidators {
    public static void validateWithException(Validator validator, Object object, Class<?>... groups)
            throws ConstraintViolationException {
        Set<ConstraintViolation<Object>> constraintViolations = validator.validate(object, groups);
        if (!constraintViolations.isEmpty()) {
            throw new ConstraintViolationException(constraintViolations);
        }
    }
}
