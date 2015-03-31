package com.smartsky.model;

import java.math.BigDecimal;

public class Resource {
    private Integer id;

    private BigDecimal seq;

    private String text;

    private String url;

    private Integer pid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getSeq() {
        return seq;
    }

    public void setSeq(BigDecimal seq) {
        this.seq = seq;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}