package com.app.webcustomertracker.aspect;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Component
@Aspect
public class CrudLoggingAspect  {
    // setup logger
    private Logger myLogger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* com.app.webcustomertracker.controller.*.*(..))")
    private void forControllerPackage(){}

    @Pointcut("execution(* com.app.webcustomertracker.service.*.*(..))")
    private void forServicePackage(){}

    @Pointcut("forControllerPackage() || forServicePackage()")
    private void forAppFlow(){}

    // add @Before advice
    @Before("forAppFlow()")
    public void before(JoinPoint theJoinPoint){
        String theMethod = theJoinPoint.getSignature().toShortString();
        myLogger.info("====> in @Before :  calling the method " +theMethod);
    }

}
