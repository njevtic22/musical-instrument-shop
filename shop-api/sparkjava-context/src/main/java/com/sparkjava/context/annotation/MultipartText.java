package com.sparkjava.context.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.PARAMETER)
public @interface MultipartText {
    String value();

    boolean required() default true;

    String defaultValue() default "";

    // location where spark-java-context will store files
    String location() default "/spark-context-temp";
}
