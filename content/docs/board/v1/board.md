---
title: "Board"
linkTitle: "Board"
weight: 3
---
# [Board](#Board)
A Board is a bulletin-board-type resource for posting notices and announcements in Cloudforet.


>  **Package : spaceone.api.board.v1**

## Board


**Board Methods:**


| Method | Request | Response |
| :----- | :-------- | :-------- |
| [**create**](#create) | [CreateBoardRequest](#createboardrequest) | [BoardInfo](#boardinfo) |
| [**update**](#update) | [UpdateBoardRequest](#updateboardrequest) | [BoardInfo](#boardinfo) |
| [**set_categories**](#set_categories) | [SetBoardCategoriesRequest](#setboardcategoriesrequest) | [BoardInfo](#boardinfo) |
| [**delete**](#delete) | [BoardRequest](#boardrequest) | [Empty](#empty) |
| [**get**](#get) | [GetBoardRequest](#getboardrequest) | [BoardInfo](#boardinfo) |
| [**list**](#list) | [BoardQuery](#boardquery) | [BoardsInfo](#boardsinfo) |
| [**stat**](#stat) | [BoardStatQuery](#boardstatquery) | [Struct](#struct) |



    

### create
> **POST** /board/v1/board/create
>




| Type | Message |
| :--- | :------ |
| Request  |  [CreateBoardRequest](#createboardrequest)    |
| Response |  [BoardInfo](#boardinfo)  |




#### [CreateBoardRequest](#CREATEBOARDREQUEST)


* **name** (string) `Optional`

  this is a name



* **categories** (string) `Required`

  this is categories



* **tags** (Struct) `Required`






#### [BoardInfo](#BOARDINFO)

* **board_id** (string) `Optional`




* **name** (string) `Optional`




* **categories** (string) `Optional`




* **tags** (Struct) `Optional`




* **created_at** (string) `Optional`





 {{< tabs " create " >}}
 {{< tab "Request Example" >}}
```text
{
"name": "notice",
"categories": ["admin", "developer", "devops"],
"tags": {"a": "b"}
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"name": "system notice",
"categories": [
"admin",
"developer",
"devops"
],
"tags": {
"b": "c"
},
"created_at": "2022-01-01T06:47:27.759Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### update
> **POST** /board/v1/board/update
>




| Type | Message |
| :--- | :------ |
| Request  |  [UpdateBoardRequest](#updateboardrequest)    |
| Response |  [BoardInfo](#boardinfo)  |




#### [UpdateBoardRequest](#UPDATEBOARDREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **name** (string) `Optional`

  is_required: false



* **tags** (Struct) `Optional`

  is_required: false





#### [BoardInfo](#BOARDINFO)

* **board_id** (string) `Optional`




* **name** (string) `Optional`




* **categories** (string) `Optional`




* **tags** (Struct) `Optional`




* **created_at** (string) `Optional`





 {{< tabs " update " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012",
"name": "system notice",
"tags": {"b": "c"}
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"name": "system notice",
"categories": [
"admin",
"developer",
"devops"
],
"tags": {
"b": "c"
},
"created_at": "2022-01-01T06:47:27.759Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### set_categories
> **POST** /board/v1/board/set-categories
>




| Type | Message |
| :--- | :------ |
| Request  |  [SetBoardCategoriesRequest](#setboardcategoriesrequest)    |
| Response |  [BoardInfo](#boardinfo)  |




#### [SetBoardCategoriesRequest](#SETBOARDCATEGORIESREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **categories** (string) `Optional`

  is_required: false





#### [BoardInfo](#BOARDINFO)

* **board_id** (string) `Optional`




* **name** (string) `Optional`




* **categories** (string) `Optional`




* **tags** (Struct) `Optional`




* **created_at** (string) `Optional`





 {{< tabs " set_categories " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012",
"categories": ["Developer", "SRE", "Devops"]
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"name": "system notice",
"categories": [
"admin",
"developer",
"devops"
],
"tags": {
"b": "c"
},
"created_at": "2022-01-01T06:47:27.759Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### delete
> **POST** /board/v1/board/delete
>




| Type | Message |
| :--- | :------ |
| Request  |  [BoardRequest](#boardrequest)    |
| Response |  [Empty](#empty)  |




#### [BoardRequest](#BOARDREQUEST)


* **board_id** (string) `Optional`

  is_required: true






 {{< tabs " delete " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012"
}
```
{{< /tab >}}



{{< /tabs >}}

    

### get
> **POST** /board/v1/board/get
>




| Type | Message |
| :--- | :------ |
| Request  |  [GetBoardRequest](#getboardrequest)    |
| Response |  [BoardInfo](#boardinfo)  |




#### [GetBoardRequest](#GETBOARDREQUEST)


* **board_id** (string) `Optional`

  is_required: true



* **only** (string) `Optional`

  is_required: false





#### [BoardInfo](#BOARDINFO)

* **board_id** (string) `Optional`




* **name** (string) `Optional`




* **categories** (string) `Optional`




* **tags** (Struct) `Optional`




* **created_at** (string) `Optional`





 {{< tabs " get " >}}
 {{< tab "Request Example" >}}
```text
{
"board_id": "board-123456789012"
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
{
"board_id": "board-123456789012",
"name": "system notice",
"categories": [
"admin",
"developer",
"devops"
],
"tags": {
"b": "c"
},
"created_at": "2022-01-01T06:47:27.759Z"
}
```
{{< /tab >}}


{{< /tabs >}}

    

### list
> **POST** /board/v1/board/list
>




| Type | Message |
| :--- | :------ |
| Request  |  [BoardQuery](#boardquery)    |
| Response |  [BoardsInfo](#boardsinfo)  |




#### [BoardQuery](#BOARDQUERY)


* **board_id** (string) `Optional`

  is_required: false



* **name** (string) `Optional`

  is_required: false



* **query** (Query) `Optional`

  is_required: false





#### [BoardsInfo](#BOARDSINFO)

* **results** (BoardInfo) `Optional`




* **total_count** (int32) `Optional`





 {{< tabs " list " >}}
 {{< tab "Request Example" >}}
```text
{
"query": {}
}
```
{{< /tab >}}


 {{< tab "Response Example" >}}
```text
"results": [
{
"board_id": "board-123456789012",
"name": "dev-notice",
"categories": [
"flower",
"school",
"spaceone"
],
"tags": {
"b": "c"
},
"created_at": "2022-01-01T05:16:08.549Z"
},
{
"board_id": "board-987654321098",
"name": "notice",
"tags": {
"a": "b"
},
"created_at": "2022-01-01T05:24:19.758Z"
}
],
"total_count": 2
```
{{< /tab >}}


{{< /tabs >}}

    

### stat
> **POST** /board/v1/board/stat
>




| Type | Message |
| :--- | :------ |
| Request  |  [BoardStatQuery](#boardstatquery)    |
| Response |  [Struct](#struct)  |




#### [BoardStatQuery](#BOARDSTATQUERY)


* **query** (StatisticsQuery) `Optional`

  is_required: true






 {{< tabs " stat " >}}



{{< /tabs >}}

    



## Message



### BoardInfo

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string||Optional|
|name|string||Optional|
|categories|string||Optional|
|tags|Struct||Optional|
|created_at|string||Optional|

### BoardQuery

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: false|Optional|
|name|string|is_required: false|Optional|
|query|Query|is_required: false|Optional|

### BoardRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|

### BoardStatQuery

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|query|StatisticsQuery|is_required: true|Optional|

### BoardsInfo

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|results|BoardInfo||Optional|
|total_count|int32||Optional|

### CreateBoardRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|name|string|this is a name|Optional|
|categories|string|this is categories|Required|
|tags|Struct||Required|

### GetBoardRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|only|string|is_required: false|Optional|

### SetBoardCategoriesRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|categories|string|is_required: false|Optional|

### UpdateBoardRequest

| Field      | Type       | Description | Required |
|:-----------|:-----------|:------------|:---------|
|board_id|string|is_required: true|Optional|
|name|string|is_required: false|Optional|
|tags|Struct|is_required: false|Optional|
