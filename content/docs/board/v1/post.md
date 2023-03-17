---
title: "Post"
linkTitle: "Post"
weight: 3
---
# [Post](#Post)
A Post is a message published on a Board. It also provides notifications to Projects affected by the Post.


>  **Package : spaceone.api.board.v1**

## Post


**Post Methods:**


| Method | Request | Response |
| :----- | :-------- | :-------- |
| [**create**](#create) | [CreatePostRequest](#createpostrequest) | [PostInfo](#postinfo) |
| [**update**](#update) | [UpdatePostRequest](#updatepostrequest) | [PostInfo](#postinfo) |
| [**send_notification**](#send_notification) | [SendNotificationRequest](#sendnotificationrequest) | [Empty](#empty) |
| [**delete**](#delete) | [PostRequest](#postrequest) | [Empty](#empty) |
| [**get**](#get) | [GetPostRequest](#getpostrequest) | [PostInfo](#postinfo) |
| [**list**](#list) | [PostQuery](#postquery) | [PostsInfo](#postsinfo) |
| [**stat**](#stat) | [PostStatQuery](#poststatquery) | [Struct](#struct) |



    

### create
> **POST** /board/v1/board/create
>




| Type | Message |
| :--- | :------ |
| Request  |  [CreatePostRequest](#createpostrequest)    |
| Response |  [PostInfo](#postinfo)  |




#### [CreatePostRequest](#CREATEPOSTREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **category** (string) `Optional`

  is_required: false



* **title** (string) `Optional`

  is_required: true



* **contents** (string) `Optional`

  is_required: true



* **options** (Struct) `Optional`

  is_required: false



* **writer** (string) `Optional`

  is_required: false



* **files** (string) `Optional`

  is_required: false



* **domain_id** (string) `Optional`

  is_required: false





#### [PostInfo](#POSTINFO)

* **board_id** (string) `Optional`




* **post_id** (string) `Optional`




* **post_type** (PostType) `Optional`




* **category** (string) `Optional`




* **title** (string) `Optional`




* **contents** (string) `Optional`




* **options** (Struct) `Optional`




* **view_count** (int32) `Optional`




* **writer** (string) `Optional`




* **scope** (Scope) `Optional`




* **files** (ListValue) `Optional`




* **domain_id** (string) `Optional`




* **user_id** (string) `Optional`




* **user_domain_id** (string) `Optional`




* **created_at** (string) `Optional`




* **updated_at** (string) `Optional`





 {{< tabs " create " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012",
"category": "developer",
"title": "title",
"contents": "This is contents.",
"options": {"is_popup": true},
"writer": "user1",
"domain_id": "domain-123456789012"
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"post_id": "post-123456789012",
"post_type": "INTERNAL",
"category": "developer",
"title": "title",
"contents": "This is contents.",
"options": {
"is_pinned": false,
"is_popup": true
},
"view_count": 0,
"writer": "user1",
"scope": "DOMAIN",
"domain_id": "domain-123456789012",
"user_id": "user1@email.com",
"created_at": "2022-01-01T01:06:23.732Z",
"updated_at": "2022-01-01T01:06:23.732Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### update
> **POST** /board/v1/board/update
>




| Type | Message |
| :--- | :------ |
| Request  |  [UpdatePostRequest](#updatepostrequest)    |
| Response |  [PostInfo](#postinfo)  |




#### [UpdatePostRequest](#UPDATEPOSTREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **post_id** (string) `Optional`

  is_required: true



* **category** (string) `Optional`

  is_required: false



* **title** (string) `Optional`

  is_required: false



* **contents** (string) `Optional`

  is_required: false



* **options** (Struct) `Optional`

  is_required: false



* **writer** (string) `Optional`

  is_required: false



* **files** (string) `Optional`

  is_required: false



* **domain_id** (string) `Optional`

  is_required: false





#### [PostInfo](#POSTINFO)

* **board_id** (string) `Optional`




* **post_id** (string) `Optional`




* **post_type** (PostType) `Optional`




* **category** (string) `Optional`




* **title** (string) `Optional`




* **contents** (string) `Optional`




* **options** (Struct) `Optional`




* **view_count** (int32) `Optional`




* **writer** (string) `Optional`




* **scope** (Scope) `Optional`




* **files** (ListValue) `Optional`




* **domain_id** (string) `Optional`




* **user_id** (string) `Optional`




* **user_domain_id** (string) `Optional`




* **created_at** (string) `Optional`




* **updated_at** (string) `Optional`





 {{< tabs " update " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012",
"post_id": "post-2118473ce15e",
"category": "developer",
"title": "title2",
"contents": "this is contents2.",
"options": {
"is_popup": false,
"is_pinned": true
},
"writer": "user1",
"domain_id": "domain-123456789012"
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"post_id": "post-123456789012",
"post_type": "INTERNAL",
"category": "developer",
"title": "title",
"contents": "This is contents.",
"options": {
"is_pinned": false,
"is_popup": true
},
"view_count": 0,
"writer": "user1",
"scope": "DOMAIN",
"domain_id": "domain-123456789012",
"user_id": "user1@email.com",
"created_at": "2022-01-01T01:06:23.732Z",
"updated_at": "2022-01-01T01:06:23.732Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### send_notification
> **POST** /board/v1/board/send-notification
>




| Type | Message |
| :--- | :------ |
| Request  |  [SendNotificationRequest](#sendnotificationrequest)    |
| Response |  [Empty](#empty)  |




#### [SendNotificationRequest](#SENDNOTIFICATIONREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **post_id** (string) `Optional`

  is_required: true



* **domain_id** (string) `Optional`

  is_required: false






 {{< tabs " send_notification " >}}



{{< /tabs >}}

    

### delete
> **POST** /board/v1/board/delete
>




| Type | Message |
| :--- | :------ |
| Request  |  [PostRequest](#postrequest)    |
| Response |  [Empty](#empty)  |




#### [PostRequest](#POSTREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **post_id** (string) `Optional`

  is_required: true



* **domain_id** (string) `Optional`

  is_required: false






 {{< tabs " delete " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-b9aa34e65c60",
"post_id": "post-2118473ce15e",
"domain_id": "domain-123456789012"
}
```
{{< /tab >}}



{{< /tabs >}}

    

### get
> **POST** /board/v1/board/get
>




| Type | Message |
| :--- | :------ |
| Request  |  [GetPostRequest](#getpostrequest)    |
| Response |  [PostInfo](#postinfo)  |




#### [GetPostRequest](#GETPOSTREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **post_id** (string) `Optional`

  is_required: true



* **only** (string) `Optional`

  is_required: false



* **domain_id** (string) `Optional`

  is_required: false





#### [PostInfo](#POSTINFO)

* **board_id** (string) `Optional`




* **post_id** (string) `Optional`




* **post_type** (PostType) `Optional`




* **category** (string) `Optional`




* **title** (string) `Optional`




* **contents** (string) `Optional`




* **options** (Struct) `Optional`




* **view_count** (int32) `Optional`




* **writer** (string) `Optional`




* **scope** (Scope) `Optional`




* **files** (ListValue) `Optional`




* **domain_id** (string) `Optional`




* **user_id** (string) `Optional`




* **user_domain_id** (string) `Optional`




* **created_at** (string) `Optional`




* **updated_at** (string) `Optional`





 {{< tabs " get " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-b9aa34e65c60",
"post_id": "post-2118473ce15e",
"domain_id": "domain-58010aa2e451"
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"post_id": "post-123456789012",
"post_type": "INTERNAL",
"category": "developer",
"title": "title",
"contents": "This is contents.",
"options": {
"is_pinned": false,
"is_popup": true
},
"view_count": 0,
"writer": "user1",
"scope": "DOMAIN",
"domain_id": "domain-123456789012",
"user_id": "user1@email.com",
"created_at": "2022-01-01T01:06:23.732Z",
"updated_at": "2022-01-01T01:06:23.732Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### list
> **POST** /board/v1/board/list
>




| Type | Message |
| :--- | :------ |
| Request  |  [PostQuery](#postquery)    |
| Response |  [PostsInfo](#postsinfo)  |




#### [PostQuery](#POSTQUERY)


* **board_id** (string) `Optional`

  is_required: true



* **post_id** (string) `Optional`

  is_required: false



* **post_type** (PostType) `Optional`

  is_required: false



* **category** (string) `Optional`

  is_required: false



* **writer** (string) `Optional`

  is_required: false



* **scope** (Scope) `Optional`

  is_required: false



* **user_id** (string) `Optional`

  is_required: false



* **user_domain_id** (string) `Optional`

  is_required: false



* **domain_id** (string) `Optional`

  is_required: false



* **query** (Query) `Optional`

  is_required: false





#### [PostsInfo](#POSTSINFO)

* **results** (PostInfo) `Optional`




* **total_count** (int32) `Optional`





 {{< tabs " list " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-b9aa34e65c60",
"query": {}
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"results": [
{
"board_id": "board-b9aa34e65c60",
"post_id": "post-2118473ce15e",
"post_type": "INTERNAL",
"category": "spaceone",
"title": "title2",
"contents": "this is contents2.",
"options": {
"is_popup": false,
"is_pinned": true
},
"view_count": 3,
"writer": "seolmin2",
"scope": "DOMAIN",
"domain_id": "domain-58010aa2e451",
"user_id": "user1@email.com",
"created_at": "2022-06-13T01:06:23.732Z",
"updated_at": "2022-06-13T01:06:23.732Z"
},
{
"board_id": "board-b9aa34e65c60",
"post_id": "post-532ae1191233",
"post_type": "INTERNAL",
"category": "flower",
"title": "작업공지",
"contents": "This is description",
"options": {
"is_pinned": true,
"is_popup": true
},
"writer": "권설민",
"scope": "PUBLIC",
"user_id": "supervisor",
"created_at": "2022-06-10T07:01:44.384Z",
"updated_at": "2022-06-10T07:01:44.384Z"
}
],
"total_count": 2
}
```
{{< /tab >}}


{{< /tabs >}}

    

### stat
> **POST** /board/v1/board/stat
>




| Type | Message |
| :--- | :------ |
| Request  |  [PostStatQuery](#poststatquery)    |
| Response |  [Struct](#struct)  |




#### [PostStatQuery](#POSTSTATQUERY)


* **query** (StatisticsQuery) `Optional`

  is_required: true



* **domain_id** (string) `Optional`

  is_required: true






 {{< tabs " stat " >}}



{{< /tabs >}}

    



## Message



### CreatePostRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|category|string|is_required: false|Optional|
|title|string|is_required: true|Optional|
|contents|string|is_required: true|Optional|
|options|Struct|is_required: false|Optional|
|writer|string|is_required: false|Optional|
|files|string|is_required: false|Optional|
|domain_id|string|is_required: false|Optional|

### GetPostRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|post_id|string|is_required: true|Optional|
|only|string|is_required: false|Optional|
|domain_id|string|is_required: false|Optional|

### PostInfo

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string||Optional|
|post_id|string||Optional|
|post_type|PostType||Optional|
|category|string||Optional|
|title|string||Optional|
|contents|string||Optional|
|options|Struct||Optional|
|view_count|int32||Optional|
|writer|string||Optional|
|scope|Scope||Optional|
|files|ListValue||Optional|
|domain_id|string||Optional|
|user_id|string||Optional|
|user_domain_id|string||Optional|
|created_at|string||Optional|
|updated_at|string||Optional|

### PostQuery

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|post_id|string|is_required: false|Optional|
|post_type|PostType|is_required: false|Optional|
|category|string|is_required: false|Optional|
|writer|string|is_required: false|Optional|
|scope|Scope|is_required: false|Optional|
|user_id|string|is_required: false|Optional|
|user_domain_id|string|is_required: false|Optional|
|domain_id|string|is_required: false|Optional|
|query|Query|is_required: false|Optional|

### PostRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|post_id|string|is_required: true|Optional|
|domain_id|string|is_required: false|Optional|

### PostStatQuery

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|query|StatisticsQuery|is_required: true|Optional|
|domain_id|string|is_required: true|Optional|

### PostsInfo

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|results|PostInfo||Optional|
|total_count|int32||Optional|

### SendNotificationRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|post_id|string|is_required: true|Optional|
|domain_id|string|is_required: false|Optional|

### UpdatePostRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|post_id|string|is_required: true|Optional|
|category|string|is_required: false|Optional|
|title|string|is_required: false|Optional|
|contents|string|is_required: false|Optional|
|options|Struct|is_required: false|Optional|
|writer|string|is_required: false|Optional|
|files|string|is_required: false|Optional|
|domain_id|string|is_required: false|Optional|
