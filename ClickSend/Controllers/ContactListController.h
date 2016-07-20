//
//  ContactListController.h
//  ClickSend
//
//  This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ) on 07/20/2016
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface ContactListController : BaseController

/**
* Completion block definition for asynchronous call to Get Contact Lists */
typedef void (^CompletedGetContactLists)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all contact lists
*/
- (void) getContactListsWithCompletionBlock:(CompletedGetContactLists) onCompleted;

/**
* Completion block definition for asynchronous call to Create Contact List */
typedef void (^CompletedPostCreateContactList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create new contact list
* @param    listName    Required parameter: Your contact list name
*/
- (void) createContactListAsyncWithListName:(NSString*) listName
                completionBlock:(CompletedPostCreateContactList) onCompleted;

/**
* Completion block definition for asynchronous call to Get Contact List */
typedef void (^CompletedGetContactList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get specific contact list
* @param    listId    Required parameter: Example: 
*/
- (void) getContactListAsyncWithListId:(int) listId
                completionBlock:(CompletedGetContactList) onCompleted;

/**
* Completion block definition for asynchronous call to Update Contact List */
typedef void (^CompletedPutUpdateContactList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update specific contact list
* @param    listId    Required parameter: Your list id
* @param    listName    Required parameter: Your new list name
*/
- (void) updateContactListAsyncWithListId:(int) listId
                listName:(NSString*) listName
                completionBlock:(CompletedPutUpdateContactList) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Contact List */
typedef void (^CompletedDeleteContactList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete a specific contact list
* @param    listId    Required parameter: Example: 
*/
- (void) deleteContactListAsyncWithListId:(int) listId
                completionBlock:(CompletedDeleteContactList) onCompleted;

/**
* Completion block definition for asynchronous call to Remove Duplicate Contacts */
typedef void (^CompletedPutRemoveDuplicateContacts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove duplicate contacts
* @param    listId    Required parameter: Your list id
*/
- (void) removeDuplicateContactsAsyncWithListId:(int) listId
                completionBlock:(CompletedPutRemoveDuplicateContacts) onCompleted;

/**
* Completion block definition for asynchronous call to Import Contacts To List */
typedef void (^CompletedPostImportContactsToList)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Import contacts to list
* @param    listId    Required parameter: Your contact list id you want to access.
* @param    file    Required parameter: Example: 
*/
- (void) importContactsToListAsyncWithListId:(int) listId
                file:(NSURL*) file
                completionBlock:(CompletedPostImportContactsToList) onCompleted;

@end