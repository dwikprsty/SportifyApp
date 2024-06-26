// {
// 	"info": {
// 		"_postman_id": "32ab43b4-3e85-4e64-a347-cdb4b8993200",
// 		"name": "si_mobile_api",
// 		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
// 		"_exporter_id": "3140692"
// 	},
// 	"item": [
// 		{
// 			"name": "customer-service-api",
// 			"item": [
// 				{
// 					"name": "customer-service",
// 					"request": {
// 						"method": "GET",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								""
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "customer-service/:nim",
// 					"request": {
// 						"method": "GET",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/1315051069",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								"1315051069"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "customer-service/:nim:id",
// 					"request": {
// 						"method": "GET",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/1315051069/1",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								"1315051069",
// 								"1"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "customer-service/:nim",
// 					"request": {
// 						"method": "POST",
// 						"header": [],
// 						"body": {
// 							"mode": "formdata",
// 							"formdata": [
// 								{
// 									"key": "title_issues",
// 									"value": "test title_issues to delete",
// 									"type": "text"
// 								},
// 								{
// 									"key": "description_issues",
// 									"value": "test description issues",
// 									"type": "text"
// 								},
// 								{
// 									"key": "rating",
// 									"value": "5",
// 									"type": "text"
// 								},
// 								{
// 									"key": "image",
// 									"type": "file",
// 									"src": "/Users/pagedev/Downloads/designer-flaticon.png"
// 								}
// 							]
// 						},
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/1315051069",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								"1315051069"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "customer-service/:nim/:id",
// 					"request": {
// 						"method": "POST",
// 						"header": [],
// 						"body": {
// 							"mode": "formdata",
// 							"formdata": [
// 								{
// 									"key": "title_issues",
// 									"value": "test title_issues updated test",
// 									"type": "text"
// 								},
// 								{
// 									"key": "description_issues",
// 									"value": "test description issues 2 updatex",
// 									"type": "text"
// 								},
// 								{
// 									"key": "rating",
// 									"value": "4",
// 									"type": "text"
// 								},
// 								{
// 									"key": "image",
// 									"type": "file",
// 									"src": "/Users/pagedev/Downloads/designer-flaticon.png"
// 								}
// 							]
// 						},
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/1315051069/3",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								"1315051069",
// 								"3"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "customer-service/:nim/:id",
// 					"request": {
// 						"method": "DELETE",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/customer-service/1315051069/2",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"customer-service",
// 								"1315051069",
// 								"2"
// 							]
// 						}
// 					},
// 					"response": []
// 				}
// 			]
// 		},
// 		{
// 			"name": "datas-api",
// 			"item": [
// 				{
// 					"name": "datas",
// 					"request": {
// 						"method": "GET",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/datas",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"datas"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "datas/:id",
// 					"request": {
// 						"method": "GET",
// 						"header": [],
// 						"url": {
// 							"raw": "{{lumen_public}}/api/datas/4",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"datas",
// 								"4"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "datas/:id",
// 					"request": {
// 						"method": "POST",
// 						"header": [],
// 						"body": {
// 							"mode": "formdata",
// 							"formdata": [
// 								{
// 									"key": "name",
// 									"value": "Test edit",
// 									"type": "text"
// 								},
// 								{
// 									"key": "image",
// 									"type": "file",
// 									"src": "/Users/pagedev/Downloads/designer-flaticon.png"
// 								}
// 							]
// 						},
// 						"url": {
// 							"raw": "{{lumen_public}}/api/datas/607",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"datas",
// 								"607"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "datas",
// 					"request": {
// 						"method": "POST",
// 						"header": [],
// 						"body": {
// 							"mode": "formdata",
// 							"formdata": [
// 								{
// 									"key": "name",
// 									"value": "test input more",
// 									"type": "text"
// 								},
// 								{
// 									"key": "image",
// 									"type": "file",
// 									"src": "/Users/pagedev/Downloads/HD wallpaper_ black, green, leaves, plants, green color, growth, tree, no people.jpg"
// 								}
// 							]
// 						},
// 						"url": {
// 							"raw": "{{lumen_public}}/api/datas",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"datas"
// 							]
// 						}
// 					},
// 					"response": []
// 				},
// 				{
// 					"name": "datas/:id",
// 					"request": {
// 						"method": "DELETE",
// 						"header": [],
// 						"body": {
// 							"mode": "formdata",
// 							"formdata": [
// 								{
// 									"key": "name",
// 									"value": "test input",
// 									"type": "text"
// 								},
// 								{
// 									"key": "image",
// 									"type": "file",
// 									"src": "/Users/pagedev/Downloads/HD wallpaper_ black, green, leaves, plants, green color, growth, tree, no people.jpg"
// 								}
// 							]
// 						},
// 						"url": {
// 							"raw": "{{lumen_public}}/api/datas/8",
// 							"host": [
// 								"{{lumen_public}}"
// 							],
// 							"path": [
// 								"api",
// 								"datas",
// 								"8"
// 							]
// 						}
// 					},
// 					"response": []
// 				}
// 			]
// 		}
// 	],
// 	"event": [
// 		{
// 			"listen": "prerequest",
// 			"script": {
// 				"type": "text/javascript",
// 				"packages": {},
// 				"exec": [
// 					""
// 				]
// 			}
// 		},
// 		{
// 			"listen": "test",
// 			"script": {
// 				"type": "text/javascript",
// 				"packages": {},
// 				"exec": [
// 					""
// 				]
// 			}
// 		}
// 	],
// 	"variable": [
// 		{
// 			"key": "lumen_local",
// 			"value": "http://127.0.0.1:8000"
// 		},
// 		{
// 			"key": "lumen_public",
// 			"value": "https://simobile.singapoly.com",
// 			"type": "string"
// 		}
// 	]
// }