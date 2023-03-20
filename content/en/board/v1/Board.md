---
title: "Board"
linkTitle: "Board"
weight: 3
bookFlatSection: true
---
# [Board](#Board)
A Board is a bulletin-board-type resource for posting notices and announcements in Cloudforet.


>  **Package : spaceone.api.board.v1**

<br>
<br>

## Board


**Board Methods:**


| Method | Request | Response |
| :----- | :-------- | :-------- |
| [**create**](./Board#create) | [CreateBoardRequest](Board#createboardrequest) | [BoardInfo](./Board#boardinfo) |
| [**update**](./Board#update) | [UpdateBoardRequest](Board#updateboardrequest) | [BoardInfo](./Board#boardinfo) |
| [**set_categories**](./Board#set_categories) | [SetBoardCategoriesRequest](Board#setboardcategoriesrequest) | [BoardInfo](./Board#boardinfo) |
| [**delete**](./Board#delete) | [BoardRequest](Board#boardrequest) | [Empty](./Board#empty) |
| [**get**](./Board#get) | [GetBoardRequest](Board#getboardrequest) | [BoardInfo](./Board#boardinfo) |
| [**list**](./Board#list) | [BoardQuery](Board#boardquery) | [BoardsInfo](./Board#boardsinfo) |
| [**stat**](./Board#stat) | [BoardStatQuery](Board#boardstatquery) | [Struct](./Board#struct) |



    
<br>

### create

> **POST** /board/v1/board/create
>




 {{< tabs " create " >}}

 {{< tab "Request Example" >}}



[CreateBoardRequest](./Board#createboardrequest)

* **name** (string)  `Required` 

  *this is a name*


* **categories** (string) 

  *this is categories*


* **tags** (Struct) 





{{< highlight json >}}
{
  "name": "notice",
  "categories": ["admin", "developer", "devops"],
  "tags": {"a": "b"}
}
{{< /highlight >}}
{{< /tab >}}


 {{< tab "Response Example" >}}

[BoardInfo](#BOARDINFO)
* **board_id** (string)  `Required` 

* **name** (string)  `Required` 

* **categories** (string)  `Required` 

* **tags** (Struct)  `Required` 

* **created_at** (string)  `Required` 



{{< highlight json >}}
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
{{< /highlight >}}
{{< /tab >}}


{{< /tabs >}}

    
<br>

### update

> **POST** /board/v1/board/update
>




 {{< tabs " update " >}}

 {{< tab "Request Example" >}}



[UpdateBoardRequest](./Board#updateboardrequest)

* **board_id** (string)  `Required` 


* **name** (string) 


* **tags** (Struct) 





{{< highlight json >}}
{
"board_id": "board-123456789012",
"name": "system notice",
"tags": {"b": "c"}
}
{{< /highlight >}}
{{< /tab >}}


 {{< tab "Response Example" >}}

[BoardInfo](#BOARDINFO)
* **board_id** (string)  `Required` 

* **name** (string)  `Required` 

* **categories** (string)  `Required` 

* **tags** (Struct)  `Required` 

* **created_at** (string)  `Required` 



{{< highlight json >}}
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
{{< /highlight >}}
{{< /tab >}}


{{< /tabs >}}

    
<br>

### set_categories

> **POST** /board/v1/board/set-categories
>




 {{< tabs " set_categories " >}}

 {{< tab "Request Example" >}}



[SetBoardCategoriesRequest](./Board#setboardcategoriesrequest)

* **board_id** (string)  `Required` 


* **categories** (string) 





{{< highlight json >}}
{
"board_id": "board-123456789012",
"categories": ["Developer", "SRE", "Devops"]
}
{{< /highlight >}}
{{< /tab >}}


 {{< tab "Response Example" >}}

[BoardInfo](#BOARDINFO)
* **board_id** (string)  `Required` 

* **name** (string)  `Required` 

* **categories** (string)  `Required` 

* **tags** (Struct)  `Required` 

* **created_at** (string)  `Required` 



{{< highlight json >}}
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
{{< /highlight >}}
{{< /tab >}}


{{< /tabs >}}

    
<br>

### delete

> **POST** /board/v1/board/delete
>




 {{< tabs " delete " >}}

 {{< tab "Request Example" >}}



[BoardRequest](./Board#boardrequest)

* **board_id** (string)  `Required` 





{{< highlight json >}}
{
"board_id": "board-123456789012"
}
{{< /highlight >}}
{{< /tab >}}



{{< /tabs >}}

    
<br>

### get

> **POST** /board/v1/board/get
>




 {{< tabs " get " >}}

 {{< tab "Request Example" >}}



[GetBoardRequest](./Board#getboardrequest)

* **board_id** (string)  `Required` 


* **only** (string) 





{{< highlight json >}}
{
"board_id": "board-123456789012"
}
{{< /highlight >}}
{{< /tab >}}


 {{< tab "Response Example" >}}

[BoardInfo](#BOARDINFO)
* **board_id** (string)  `Required` 

* **name** (string)  `Required` 

* **categories** (string)  `Required` 

* **tags** (Struct)  `Required` 

* **created_at** (string)  `Required` 



{{< highlight json >}}
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
{{< /highlight >}}
{{< /tab >}}


{{< /tabs >}}

    
<br>

### list

> **POST** /board/v1/board/list
>




 {{< tabs " list " >}}

 {{< tab "Request Example" >}}



[BoardQuery](./Board#boardquery)

* **board_id** (string) 


* **name** (string) 


* **query** (Query) 





{{< highlight json >}}
{
"query": {}
}
{{< /highlight >}}
{{< /tab >}}


 {{< tab "Response Example" >}}

[BoardsInfo](#BOARDSINFO)
* **results** (BoardInfo)  `Required` 

* **total_count** (int32)  `Required` 



{{< highlight json >}}
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
{{< /highlight >}}
{{< /tab >}}


{{< /tabs >}}

    
<br>

### stat

> **POST** /board/v1/board/stat
>




 {{< tabs " stat " >}}




{{< /tabs >}}

    


<br>
<br>

## Message



### BoardInfo
* **board_id** (string)  `Required` 

    
* **name** (string)  `Required` 

    
* **categories** (string)  `Required` 

    
* **tags** (Struct)  `Required` 

    
* **created_at** (string)  `Required` 

    <br>

### BoardQuery
* **board_id** (string) 

    
* **name** (string) 

    
* **query** (Query) 

    <br>

### BoardRequest
* **board_id** (string)  `Required` 

    <br>

### BoardStatQuery
* **query** (StatisticsQuery)  `Required` 

    <br>

### BoardsInfo
* **results** (BoardInfo)  `Required` 

    
* **total_count** (int32)  `Required` 

    <br>

### CreateBoardRequest
* **name** (string)  `Required` 

  *this is a name*

    
* **categories** (string) 

  *this is categories*

    
* **tags** (Struct) 

    <br>

### GetBoardRequest
* **board_id** (string)  `Required` 

    
* **only** (string) 

    <br>

### SetBoardCategoriesRequest
* **board_id** (string)  `Required` 

    
* **categories** (string) 

    <br>

### UpdateBoardRequest
* **board_id** (string)  `Required` 

    
* **name** (string) 

    
* **tags** (Struct) 

    <br>
