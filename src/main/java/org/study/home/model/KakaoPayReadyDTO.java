package org.study.home.model;

import java.util.Date;

import lombok.Data;

@Data
public class KakaoPayReadyDTO {
    
    //response
    private String tid, next_redirect_pc_url;
    private Date created_at;
    
}