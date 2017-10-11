package com.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AdminmenuExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AdminmenuExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andShownameIsNull() {
            addCriterion("showname is null");
            return (Criteria) this;
        }

        public Criteria andShownameIsNotNull() {
            addCriterion("showname is not null");
            return (Criteria) this;
        }

        public Criteria andShownameEqualTo(String value) {
            addCriterion("showname =", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameNotEqualTo(String value) {
            addCriterion("showname <>", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameGreaterThan(String value) {
            addCriterion("showname >", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameGreaterThanOrEqualTo(String value) {
            addCriterion("showname >=", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameLessThan(String value) {
            addCriterion("showname <", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameLessThanOrEqualTo(String value) {
            addCriterion("showname <=", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameLike(String value) {
            addCriterion("showname like", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameNotLike(String value) {
            addCriterion("showname not like", value, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameIn(List<String> values) {
            addCriterion("showname in", values, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameNotIn(List<String> values) {
            addCriterion("showname not in", values, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameBetween(String value1, String value2) {
            addCriterion("showname between", value1, value2, "showname");
            return (Criteria) this;
        }

        public Criteria andShownameNotBetween(String value1, String value2) {
            addCriterion("showname not between", value1, value2, "showname");
            return (Criteria) this;
        }

        public Criteria andIshassonIsNull() {
            addCriterion("ishasson is null");
            return (Criteria) this;
        }

        public Criteria andIshassonIsNotNull() {
            addCriterion("ishasson is not null");
            return (Criteria) this;
        }

        public Criteria andIshassonEqualTo(Integer value) {
            addCriterion("ishasson =", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonNotEqualTo(Integer value) {
            addCriterion("ishasson <>", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonGreaterThan(Integer value) {
            addCriterion("ishasson >", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonGreaterThanOrEqualTo(Integer value) {
            addCriterion("ishasson >=", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonLessThan(Integer value) {
            addCriterion("ishasson <", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonLessThanOrEqualTo(Integer value) {
            addCriterion("ishasson <=", value, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonIn(List<Integer> values) {
            addCriterion("ishasson in", values, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonNotIn(List<Integer> values) {
            addCriterion("ishasson not in", values, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonBetween(Integer value1, Integer value2) {
            addCriterion("ishasson between", value1, value2, "ishasson");
            return (Criteria) this;
        }

        public Criteria andIshassonNotBetween(Integer value1, Integer value2) {
            addCriterion("ishasson not between", value1, value2, "ishasson");
            return (Criteria) this;
        }

        public Criteria andParentidIsNull() {
            addCriterion("parentid is null");
            return (Criteria) this;
        }

        public Criteria andParentidIsNotNull() {
            addCriterion("parentid is not null");
            return (Criteria) this;
        }

        public Criteria andParentidEqualTo(String value) {
            addCriterion("parentid =", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotEqualTo(String value) {
            addCriterion("parentid <>", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidGreaterThan(String value) {
            addCriterion("parentid >", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidGreaterThanOrEqualTo(String value) {
            addCriterion("parentid >=", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLessThan(String value) {
            addCriterion("parentid <", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLessThanOrEqualTo(String value) {
            addCriterion("parentid <=", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLike(String value) {
            addCriterion("parentid like", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotLike(String value) {
            addCriterion("parentid not like", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidIn(List<String> values) {
            addCriterion("parentid in", values, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotIn(List<String> values) {
            addCriterion("parentid not in", values, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidBetween(String value1, String value2) {
            addCriterion("parentid between", value1, value2, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotBetween(String value1, String value2) {
            addCriterion("parentid not between", value1, value2, "parentid");
            return (Criteria) this;
        }

        public Criteria andNodeurlIsNull() {
            addCriterion("nodeurl is null");
            return (Criteria) this;
        }

        public Criteria andNodeurlIsNotNull() {
            addCriterion("nodeurl is not null");
            return (Criteria) this;
        }

        public Criteria andNodeurlEqualTo(String value) {
            addCriterion("nodeurl =", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlNotEqualTo(String value) {
            addCriterion("nodeurl <>", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlGreaterThan(String value) {
            addCriterion("nodeurl >", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlGreaterThanOrEqualTo(String value) {
            addCriterion("nodeurl >=", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlLessThan(String value) {
            addCriterion("nodeurl <", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlLessThanOrEqualTo(String value) {
            addCriterion("nodeurl <=", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlLike(String value) {
            addCriterion("nodeurl like", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlNotLike(String value) {
            addCriterion("nodeurl not like", value, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlIn(List<String> values) {
            addCriterion("nodeurl in", values, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlNotIn(List<String> values) {
            addCriterion("nodeurl not in", values, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlBetween(String value1, String value2) {
            addCriterion("nodeurl between", value1, value2, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andNodeurlNotBetween(String value1, String value2) {
            addCriterion("nodeurl not between", value1, value2, "nodeurl");
            return (Criteria) this;
        }

        public Criteria andIsnewblankIsNull() {
            addCriterion("isnewblank is null");
            return (Criteria) this;
        }

        public Criteria andIsnewblankIsNotNull() {
            addCriterion("isnewblank is not null");
            return (Criteria) this;
        }

        public Criteria andIsnewblankEqualTo(String value) {
            addCriterion("isnewblank =", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankNotEqualTo(String value) {
            addCriterion("isnewblank <>", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankGreaterThan(String value) {
            addCriterion("isnewblank >", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankGreaterThanOrEqualTo(String value) {
            addCriterion("isnewblank >=", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankLessThan(String value) {
            addCriterion("isnewblank <", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankLessThanOrEqualTo(String value) {
            addCriterion("isnewblank <=", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankLike(String value) {
            addCriterion("isnewblank like", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankNotLike(String value) {
            addCriterion("isnewblank not like", value, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankIn(List<String> values) {
            addCriterion("isnewblank in", values, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankNotIn(List<String> values) {
            addCriterion("isnewblank not in", values, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankBetween(String value1, String value2) {
            addCriterion("isnewblank between", value1, value2, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andIsnewblankNotBetween(String value1, String value2) {
            addCriterion("isnewblank not between", value1, value2, "isnewblank");
            return (Criteria) this;
        }

        public Criteria andCreattimeIsNull() {
            addCriterion("creattime is null");
            return (Criteria) this;
        }

        public Criteria andCreattimeIsNotNull() {
            addCriterion("creattime is not null");
            return (Criteria) this;
        }

        public Criteria andCreattimeEqualTo(Date value) {
            addCriterion("creattime =", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeNotEqualTo(Date value) {
            addCriterion("creattime <>", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeGreaterThan(Date value) {
            addCriterion("creattime >", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeGreaterThanOrEqualTo(Date value) {
            addCriterion("creattime >=", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeLessThan(Date value) {
            addCriterion("creattime <", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeLessThanOrEqualTo(Date value) {
            addCriterion("creattime <=", value, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeIn(List<Date> values) {
            addCriterion("creattime in", values, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeNotIn(List<Date> values) {
            addCriterion("creattime not in", values, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeBetween(Date value1, Date value2) {
            addCriterion("creattime between", value1, value2, "creattime");
            return (Criteria) this;
        }

        public Criteria andCreattimeNotBetween(Date value1, Date value2) {
            addCriterion("creattime not between", value1, value2, "creattime");
            return (Criteria) this;
        }

        public Criteria andSortIsNull() {
            addCriterion("sort is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("sort is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(String value) {
            addCriterion("sort =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(String value) {
            addCriterion("sort <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(String value) {
            addCriterion("sort >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(String value) {
            addCriterion("sort >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(String value) {
            addCriterion("sort <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(String value) {
            addCriterion("sort <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLike(String value) {
            addCriterion("sort like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotLike(String value) {
            addCriterion("sort not like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<String> values) {
            addCriterion("sort in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<String> values) {
            addCriterion("sort not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(String value1, String value2) {
            addCriterion("sort between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(String value1, String value2) {
            addCriterion("sort not between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andIconfontIsNull() {
            addCriterion("iconfont is null");
            return (Criteria) this;
        }

        public Criteria andIconfontIsNotNull() {
            addCriterion("iconfont is not null");
            return (Criteria) this;
        }

        public Criteria andIconfontEqualTo(String value) {
            addCriterion("iconfont =", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontNotEqualTo(String value) {
            addCriterion("iconfont <>", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontGreaterThan(String value) {
            addCriterion("iconfont >", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontGreaterThanOrEqualTo(String value) {
            addCriterion("iconfont >=", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontLessThan(String value) {
            addCriterion("iconfont <", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontLessThanOrEqualTo(String value) {
            addCriterion("iconfont <=", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontLike(String value) {
            addCriterion("iconfont like", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontNotLike(String value) {
            addCriterion("iconfont not like", value, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontIn(List<String> values) {
            addCriterion("iconfont in", values, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontNotIn(List<String> values) {
            addCriterion("iconfont not in", values, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontBetween(String value1, String value2) {
            addCriterion("iconfont between", value1, value2, "iconfont");
            return (Criteria) this;
        }

        public Criteria andIconfontNotBetween(String value1, String value2) {
            addCriterion("iconfont not between", value1, value2, "iconfont");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}