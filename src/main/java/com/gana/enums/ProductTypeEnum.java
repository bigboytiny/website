package com.gana.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Arrays;

/**
 * 上海信也科技有限公司
 *
 * @program: website
 * @description:
 * @author: zoujie01
 * @create: 2020/8/31 12:52
 */
@Getter
@AllArgsConstructor
public enum ProductTypeEnum {

    SP("seasonings_flavorings", "Seasonings&Flavorings"),

    T("thickeners", "Thickeners"),

    P("preservatives", "Preservatives"),

    PE("plant_extracts", "Plant Extracts"),

    AA("amino_acids", "Amino Acids"),

    DV("dehydrated_vegetables", "Dehydrated Vegetables");

    private String type;

    private String desc;

    public static String getDesc(String type) {
        return Arrays.stream(ProductTypeEnum.values()).filter(a -> {
            return a.getType().equalsIgnoreCase(type);
        }).findFirst().map(ProductTypeEnum::getDesc).orElse(null);
    }

}
