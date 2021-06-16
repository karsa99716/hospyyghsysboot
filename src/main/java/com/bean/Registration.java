package com.bean;

import java.math.BigDecimal;
import java.util.List;

public class Registration {
    private Integer id;

    private String memberid;


    private String officeid;

    private BigDecimal price;

    private String content;

    private String delstatus;

    private String savetime;

    private String ddno;

    private String status;

    private Sysuser member;

    private double costtotal;

    private String january;

    private String february;


    private String march;

    private String april;

    private String may;


    private String june;

    private String july;

    private String august;

    private String september;

    private String october;

    private String november;

    private String december;


    private Office office;
    private int hyid;
    private int doctorid;

    private Doctorpb doctorpb;
    private Sysuser doctor;

    private double total;

    private List<Prescription> prescriptionlist;

    private List<Projectjc> projectjclist;

    private String rq;
    private String sl;

    private List<Doctorpj> doctorpjlist;//评价记录

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getOfficeid() {
        return officeid;
    }

    public void setOfficeid(String officeid) {
        this.officeid = officeid;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDelstatus() {
        return delstatus;
    }

    public void setDelstatus(String delstatus) {
        this.delstatus = delstatus;
    }

    public String getSavetime() {
        return savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

    public String getDdno() {
        return ddno;
    }

    public void setDdno(String ddno) {
        this.ddno = ddno;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Sysuser getMember() {
        return member;
    }

    public void setMember(Sysuser member) {
        this.member = member;
    }

    public double getCosttotal() {
        return costtotal;
    }

    public void setCosttotal(double costtotal) {
        this.costtotal = costtotal;
    }

    public String getJanuary() {
        return january;
    }

    public void setJanuary(String january) {
        this.january = january;
    }

    public String getFebruary() {
        return february;
    }

    public void setFebruary(String february) {
        this.february = february;
    }

    public String getMarch() {
        return march;
    }

    public void setMarch(String march) {
        this.march = march;
    }

    public String getApril() {
        return april;
    }

    public void setApril(String april) {
        this.april = april;
    }

    public String getMay() {
        return may;
    }

    public void setMay(String may) {
        this.may = may;
    }

    public String getJune() {
        return june;
    }

    public void setJune(String june) {
        this.june = june;
    }

    public String getJuly() {
        return july;
    }

    public void setJuly(String july) {
        this.july = july;
    }

    public String getAugust() {
        return august;
    }

    public void setAugust(String august) {
        this.august = august;
    }

    public String getSeptember() {
        return september;
    }

    public void setSeptember(String september) {
        this.september = september;
    }

    public String getOctober() {
        return october;
    }

    public void setOctober(String october) {
        this.october = october;
    }

    public String getNovember() {
        return november;
    }

    public void setNovember(String november) {
        this.november = november;
    }

    public String getDecember() {
        return december;
    }

    public void setDecember(String december) {
        this.december = december;
    }

    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }

    public List<Prescription> getPrescriptionlist() {
        return prescriptionlist;
    }

    public void setPrescriptionlist(List<Prescription> prescriptionlist) {
        this.prescriptionlist = prescriptionlist;
    }

    public List<Projectjc> getProjectjclist() {
        return projectjclist;
    }

    public void setProjectjclist(List<Projectjc> projectjclist) {
        this.projectjclist = projectjclist;
    }


    public int getHyid() {
        return hyid;
    }

    public void setHyid(int hyid) {
        this.hyid = hyid;
    }

    public Doctorpb getDoctorpb() {
        return doctorpb;
    }

    public void setDoctorpb(Doctorpb doctorpb) {
        this.doctorpb = doctorpb;
    }

    public int getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(int doctorid) {
        this.doctorid = doctorid;
    }

    public Sysuser getDoctor() {
        return doctor;
    }

    public void setDoctor(Sysuser doctor) {
        this.doctor = doctor;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


    public String getRq() {
        return rq;
    }

    public void setRq(String rq) {
        this.rq = rq;
    }

    public String getSl() {
        return sl;
    }

    public void setSl(String sl) {
        this.sl = sl;
    }

    public List<Doctorpj> getDoctorpjlist() {
        return doctorpjlist;
    }

    public void setDoctorpjlist(List<Doctorpj> doctorpjlist) {
        this.doctorpjlist = doctorpjlist;
    }
}