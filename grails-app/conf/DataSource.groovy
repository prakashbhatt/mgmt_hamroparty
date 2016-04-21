dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            /*dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"*/
            dbCreate = "update"
            url = "jdbc:mysql://localhost/hamroparty"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = ""
           /* username = "hamroparty"
            password = "wX5DBfXe"*/
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
           // url = "jdbc:mysql://localhost/hamroparty"
            url = "jdbc:mysql://hamroparty.org/i2071759_wp1"
            driverClassName = "com.mysql.jdbc.Driver"
           /* username = "root"
            password = ""*/
            username = "i2071759_wp1"
            password = "mT?&2qt}]cTM"

            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
