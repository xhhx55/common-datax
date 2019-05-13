{
  "job": {
    "setting": {
      "speed": {
        "channel": ${(setting.speed.channel)!"3"}
      },
      "errorLimit": {
        "record": ${(setting.errorLimit.record)!"0"},
        "percentage": ${(setting.errorLimit.percentage)!"0.02"}
      }
    },
    "content": [
      {
        "reader": {
          "name": "mysqlreader",
          "parameter": {
            "username": "${username}",
            "password": "${password}",
            "connection": [
              <#list connection as conn>
                {
                  "querySql": [
                    <#list conn.querySql as sql>
                      "${sql}"<#if sql_has_next>,</#if>
                    </#list>
                  ],
                  "jdbcUrl": [
                    <#list conn.jdbcUrl as url>
                      "${url}"<#if url_has_next>,</#if>
                    </#list>
                  ]
                }<#if conn_has_next>,</#if>
              </#list>
            ]
          }
        },
        "writer": {
          "name": "hdfswriter",
          "parameter": {
            "defaultFS": "${defaultFS}",
            "fileType": "${fileType}",
            "path": "${path}",
            "fileName": "${fileName}",
            "column": [
              <#list hdfsColumn as column>
                {
                "name": "${column.name}",
                "type": "${column.type}"
                }<#if column_has_next>,</#if>
              </#list>
            ],
            "writeMode": "${writeMode}",
            "fieldDelimiter": "${fieldDelimiter}"
          }
        }
      }
    ]
  }
}