package com.entity;

import java.util.Date;

public class Adminmenu {
    private String id;

    private String name;

    private String showname;

    private Integer ishasson;

    private String parentid;

    private String nodeurl;

    private String isnewblank;

    private Date creattime;

    private String sort;

    private String iconfont;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getShowname() {
        return showname;
    }

    public void setShowname(String showname) {
        this.showname = showname == null ? null : showname.trim();
    }

    public Integer getIshasson() {
        return ishasson;
    }

    public void setIshasson(Integer ishasson) {
        this.ishasson = ishasson;
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public String getNodeurl() {
        return nodeurl;
    }

    public void setNodeurl(String nodeurl) {
        this.nodeurl = nodeurl == null ? null : nodeurl.trim();
    }

    public String getIsnewblank() {
        return isnewblank;
    }

    public void setIsnewblank(String isnewblank) {
        this.isnewblank = isnewblank == null ? null : isnewblank.trim();
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getIconfont() {
        return iconfont;
    }

    public void setIconfont(String iconfont) {
        this.iconfont = iconfont == null ? null : iconfont.trim();
    }
}