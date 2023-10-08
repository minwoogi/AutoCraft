package com.jun.car;


import lombok.*;


@Setter
@Getter
@ToString
public class Composition {

    private int isg; // 배기량
    private int carb; // 차체
    private int tire; // 타이어
    private int wheel; // 휠인치

    public Composition(int isg, int carb, int tire, int wheel) {
        this.isg = isg;
        this.carb = carb;
        this.tire = tire;
        this.wheel = wheel;
    }


}
