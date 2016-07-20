//
//  ContactController.h
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

@interface ContactController : BaseController

/**
* Completion block definition for asynchronous call to Get Contacts */
typedef void (^CompletedGetContacts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get all contacts in a list
* @param    listId    Required parameter: Example: 
*/
- (void) getContactsAsyncWithListId:(int) listId
                completionBlock:(CompletedGetContacts) onCompleted;

/**
* Completion block definition for asynchronous call to Create Contact */
typedef void (^CompletedPostCreateContact)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create new contact
* @param    listId    Required parameter: Your list_id
* @param    phoneNumber    Optional parameter: Your phone number in E.164 format. Must be provided if no fax number or email.
* @param    email    Optional parameter: Your email. Must be provided if no phone number or fax number.
* @param    faxNumber    Optional parameter: You fax number. Must be provided if no phone number or email.
* @param    firstName    Optional parameter: Your firstname.
* @param    lastName    Optional parameter: Your lastname.
* @param    addressLine1    Optional parameter: Example: 
* @param    addressLine2    Optional parameter: Example: 
* @param    addressCity    Optional parameter: Example: 
* @param    addressState    Optional parameter: Example: 
* @param    addressPostalCode    Optional parameter: Example: 
* @param    addressCountry    Optional parameter: Example: 
* @param    organizationName    Optional parameter: Example: 
* @param    custom1    Optional parameter: Example: 
* @param    custom2    Optional parameter: Example: 
* @param    custom3    Optional parameter: Example: 
* @param    custom4    Optional parameter: Example: 
*/
- (void) createContactAsyncWithListId:(int) listId
                phoneNumber:(NSString*) phoneNumber
                email:(NSString*) email
                faxNumber:(NSString*) faxNumber
                firstName:(NSString*) firstName
                lastName:(NSString*) lastName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                organizationName:(NSString*) organizationName
                custom1:(NSString*) custom1
                custom2:(NSString*) custom2
                custom3:(NSString*) custom3
                custom4:(NSString*) custom4
                completionBlock:(CompletedPostCreateContact) onCompleted;

/**
* Completion block definition for asynchronous call to Get Contact */
typedef void (^CompletedGetContact)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Get a specific contact
* @param    listId    Required parameter: Your contact list id you want to access.
* @param    contactId    Required parameter: Your contact id you want to access.
*/
- (void) getContactAsyncWithListId:(int) listId
                contactId:(int) contactId
                completionBlock:(CompletedGetContact) onCompleted;

/**
* Completion block definition for asynchronous call to Update Contact */
typedef void (^CompletedPutUpdateContact)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Update contact
* @param    listId    Required parameter: Your list id
* @param    contactId    Required parameter: Your contact id
* @param    phoneNumber    Optional parameter: Your phone number in E.164 format.
* @param    email    Optional parameter: Your email. Must be provided if no phone number or fax number.
* @param    faxNumber    Optional parameter: You fax number. Must be provided if no phone number or email.
* @param    firstName    Optional parameter: Your firstname
* @param    lastName    Optional parameter: Your lastname
* @param    addressLine1    Optional parameter: Example: 
* @param    addressLine2    Optional parameter: Example: 
* @param    addressCity    Optional parameter: Example: 
* @param    addressState    Optional parameter: Example: 
* @param    addressPostalCode    Optional parameter: Example: 
* @param    addressCountry    Optional parameter: Example: 
* @param    organizationName    Optional parameter: Example: 
* @param    custom1    Optional parameter: Example: 
* @param    custom2    Optional parameter: Example: 
* @param    custom3    Optional parameter: Example: 
* @param    custom4    Optional parameter: Example: 
*/
- (void) updateContactAsyncWithListId:(int) listId
                contactId:(int) contactId
                phoneNumber:(NSString*) phoneNumber
                email:(NSString*) email
                faxNumber:(NSString*) faxNumber
                firstName:(NSString*) firstName
                lastName:(NSString*) lastName
                addressLine1:(NSString*) addressLine1
                addressLine2:(NSString*) addressLine2
                addressCity:(NSString*) addressCity
                addressState:(NSString*) addressState
                addressPostalCode:(NSString*) addressPostalCode
                addressCountry:(NSString*) addressCountry
                organizationName:(NSString*) organizationName
                custom1:(NSString*) custom1
                custom2:(NSString*) custom2
                custom3:(NSString*) custom3
                custom4:(NSString*) custom4
                completionBlock:(CompletedPutUpdateContact) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Contact */
typedef void (^CompletedDeleteContact)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Delete a contact
* @param    listId    Required parameter: Example: 
* @param    contactId    Required parameter: Example: 
*/
- (void) deleteContactAsyncWithListId:(int) listId
                contactId:(NSString*) contactId
                completionBlock:(CompletedDeleteContact) onCompleted;

/**
* Completion block definition for asynchronous call to Remove Opted Out Contacts */
typedef void (^CompletedPutRemoveOptedOutContacts)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove all opted out contacts
* @param    listId    Required parameter: Your list id
* @param    optOutListId    Required parameter: Your opt out list id
*/
- (void) removeOptedOutContactsAsyncWithListId:(int) listId
                optOutListId:(int) optOutListId
                completionBlock:(CompletedPutRemoveOptedOutContacts) onCompleted;

@end