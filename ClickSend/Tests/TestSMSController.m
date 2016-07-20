/*
 * ClickSend
 *
 * This file was automatically generated for ClickSend by APIMATIC v2.0 on 07/20/2016
 */
#import <XCTest/XCTest.h>
#import "SMSController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestSMSController : TestBaseController
//Controller instance for all tests
@property SMSController* controller;
@end 


@implementation  TestSMSController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
    [super setUp];
    self.controller = [[SMSController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
    [super tearDown];
}	


// Todo Add description for test testSendSms    
-(void) testSendSms {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    SmsMessageCollection* messages = (SmsMessageCollection*) [APIHelper jsonDeserialize: @"{\"messages\":[{\"source\": \"php\",\"to\": \"+61411111111\",\"from\": \"sendlist\",\"body\": \"Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.\",\"list_id\": 428,\"schedule\": 1436876011,\"custom_string\":\"this is a test\"}]}"
                toClass: SmsMessageCollection.class];

    // Set callback and perform API call
    [self.controller sendSmsAsyncWithMessages: messages  completionBlock:^(BOOL success, HttpContext* context, SMSResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test headers
        NSMutableDictionary* headers = [[NSMutableDictionary alloc] init];
        
        [headers setObject:[NSNull null]  forKey:@"Connection"];
        NSDictionary *headersCopy = [headers copy];
        XCTAssertTrue([TestHelper isProperSubsetOf: headersCopy
               rightTree: context.response.headers 
             checkValues: YES
              allowExtra: YES
               isOrdered:NO]);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\":200,\"response_code\":\"SUCCESS\",\"response_msg\":\"Messages queued for delivery.\",\"data\":{\"total_price\":0,\"total_count\":1,\"queued_count\":0,\"messages\":[{\"to\":\"+61411111111\",\"body\":\"Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.\",\"from\":\"sendlist\",\"schedule\":1436876011,\"message_id\":\"8CE1A5AB-FB4E-491D-875A-58710B888AD9\",\"list_id\":428,\"custom_string\":\"this is a test\",\"status\":\"NO_PERMISSION_TO_ACCESS_CONTACT_LIST\"}],\"_currency\":{\"currency_name_short\":\"USD\",\"currency_prefix_d\":\"$\",\"currency_prefix_c\":\"\\u00a2\",\"currency_name_long\":\"US Dollars\"}}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testCalculatePrice    
-(void) testCalculatePrice {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    SmsMessageCollection* messages = (SmsMessageCollection*) [APIHelper jsonDeserialize: @"{\"messages\":[{\"source\": \"php\",\"to\": \"+61411111111\",\"from\": \"sendlist\",\"body\": \"Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.\",\"list_id\": 428,\"schedule\": 1436876011,\"custom_string\":\"this is a test\"}]}"
                toClass: SmsMessageCollection.class];

    // Set callback and perform API call
    [self.controller calculatePriceAsyncWithMessages: messages  completionBlock:^(BOOL success, HttpContext* context, SMSResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test headers
        NSMutableDictionary* headers = [[NSMutableDictionary alloc] init];
        
        [headers setObject:[NSNull null]  forKey:@"Connection"];
        NSDictionary *headersCopy = [headers copy];
        XCTAssertTrue([TestHelper isProperSubsetOf: headersCopy
               rightTree: context.response.headers 
             checkValues: YES
              allowExtra: YES
               isOrdered:NO]);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\":200,\"response_code\":\"SUCCESS\",\"response_msg\":\"Messages queued for delivery.\",\"data\":{\"total_price\":0,\"total_count\":1,\"queued_count\":0,\"messages\":[{\"to\":\"+61411111111\",\"body\":\"Chocolate bar icing icing oat cake carrot cake jelly cotton MWEvciEPIr.\",\"from\":\"sendlist\",\"schedule\":1436876011,\"message_id\":\"8CE1A5AB-FB4E-491D-875A-58710B888AD9\",\"list_id\":428,\"custom_string\":\"this is a test\",\"status\":\"NO_PERMISSION_TO_ACCESS_CONTACT_LIST\"}],\"_currency\":{\"currency_name_short\":\"USD\",\"currency_prefix_d\":\"$\",\"currency_prefix_c\":\"\\u00a2\",\"currency_name_long\":\"US Dollars\"}}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testGetSmsHistory    
-(void) testGetSmsHistory {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSNumber* dateFrom = [NSNumber numberWithInteger: [@"1449459940" intValue]];
    NSNumber* dateTo = [NSNumber numberWithInteger: [@"1449659940" intValue]];

    // Set callback and perform API call
    [self.controller getSmsHistoryAsyncWithDateFrom: dateFrom dateTo : dateTo  completionBlock:^(BOOL success, HttpContext* context, SMSHistoryResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\":200,\"response_code\":\"SUCCESS\",\"response_msg\":\"Here is your history.\",\"data\":{\"total\":0,\"per_page\":15,\"current_page\":1,\"last_page\":0,\"next_page_url\":null,\"prev_page_url\":null,\"from\":1,\"to\":0,\"data\":[]}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testExportSMSHistory    
-(void) testExportSMSHistory {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSString* filename = @"testFile";

    // Set callback and perform API call
    [self.controller exportHistoryAsyncWithFilename: filename  completionBlock:^(BOOL success, HttpContext* context, SMSHistoryResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\":\"Download your file here.\",\"data\":{\"url\": \"https://rest.clicksend.com/files/811F1369-B602-4526-A70C-C9951EC49272\"}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testCreateReceipt    
-(void) testCreateReceipt {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    UrlModel* url = (UrlModel*) [APIHelper jsonDeserialize: @"{\"url\": \"someurlhere.com\"}"
                toClass: UrlModel.class];

    // Set callback and perform API call
    [self.controller createReceiptAsyncWithUrl: url  completionBlock:^(BOOL success, HttpContext* context, DeliveryReceiptResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Receipt has been added\",\"data\": {\"timestamp\": \"1441958441\",\"message_id\": \"493FFB41-9733-4641-985F-BD79A067B58F\",\"status_code\": \"201\",\"status_text\": \"Success: Message received on handset.\",\"error_code\": null,\"error_text\": null,\"custom_string\": null}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testGetDeliveryReceipts    
-(void) testGetDeliveryReceipts {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

    // Set callback and perform API call
    [self.controller getDeliveryReceiptsWithCompletionBlock:  ^(BOOL success, HttpContext* context, DeliveryReceiptsResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Here are your delivery receipts.\",\"data\": {\"total\": 3,\"per_page\": 15,\"current_page\": 1,\"last_page\": 1,\"next_page_url\": null,\"prev_page_url\": null,\"from\": 1,\"to\": 3,\"data\": [{\"timestamp_send\": \"1442381791\",\"timestamp\": \"1442381791\",\"message_id\": \"31BC271B-1E0C-45F6-9E7E-97186C46BB82\",\"status_code\": \"201\",\"status_text\": \"Success: Message received on handset.\",\"error_code\": null,\"error_text\": null,\"custom_string\": null,\"_message_type\": \"sms\"}]}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testMarkReceiptsAsRead    
-(void) testMarkReceiptsAsRead {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSNumber* dateBefore = [NSNumber numberWithInteger: [@"1441958441" intValue]];

    // Set callback and perform API call
    [self.controller markReceiptsAsReadAsyncWithDateBefore: dateBefore  completionBlock:^(BOOL success, HttpContext* context, DeliveryReceiptResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Receipts has been marked as read.\",\"data\": []}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testGetInboundSms    
-(void) testGetInboundSms {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

    // Set callback and perform API call
    [self.controller getInboundSmsWithCompletionBlock:  ^(BOOL success, HttpContext* context, InboundMultiSmsResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Here are your data.\",\"data\": {\"total\": 3,\"per_page\": 15,\"current_page\": 1,\"last_page\": 1,\"next_page_url\": null,\"prev_page_url\": null,\"from\": 1,\"to\": 3,\"data\": [{\"timestamp\": \"1436174407\",\"from\": \"+61411111111\",\"body\": \"Liquorice sweet roll fruitcake gummies. \",\"original_body\": \"Liquorice sweet roll fruitcake gummies. \",\"original_message_id\": \"C557B56E-83C0-4070-A74C-9BF05474B418\",\"to\": \"SC557B56E-83C0-4070-A74C-9BF05474B418\",\"custom_string\": \"22PKU978RF\",\"_keyword\": \"liquorice\"}]}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testCreateInboundSms    
-(void) testCreateInboundSms {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    UrlModel* url = (UrlModel*) [APIHelper jsonDeserialize: @"{\"url\": \"test.com\"}"
                toClass: UrlModel.class];

    // Set callback and perform API call
    [self.controller createInboundSmsAsyncWithUrl: url  completionBlock:^(BOOL success, HttpContext* context, InboundSmsResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Here are your incoming messages.\",\"data\": {\"timestamp\": \"1442398236\",\"from\": \"+61468460249\",\"body\": \"This is a test incoming SMS. 5IHHOWWZTB.\",\"original_body\": \"This is the original message. AA4NN45X7J.\",\"original_message_id\": \"F35B6DF1-0C9E-488F-954E-2F603B6192F5\",\"to\":\"+61411111111\",\"custom_string\": null,\"_keyword\": \"this\"}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testMarkAllInboundSmsAsRead    
-(void) testMarkAllInboundSmsAsRead {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    int dateBefore = [NSNumber numberWithInteger: [@"1442398100" intValue]];

    // Set callback and perform API call
    [self.controller markInboundSmsAsReadAsyncWithDateBefore: dateBefore  completionBlock:^(BOOL success, HttpContext* context, InboundSmsResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"Inbound messages have been marked as read.\",\"data\": []}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testCancelScheduledSms    
-(void) testCancelScheduledSms {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSString* messageId = @"307EF035";

    // Set callback and perform API call
    [self.controller cancelScheduledSmsAsyncWithMessageId: messageId  completionBlock:^(BOOL success, HttpContext* context, ScheduledMessageResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(404, context.response.statusCode);

        [expectation fulfill];
    }];
    [self wait];
}

// Todo Add description for test testCancelAllScheduledSms    
-(void) testCancelAllScheduledSms {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

    // Set callback and perform API call
    [self.controller cancelAllScheduledSmsWithCompletionBlock:  ^(BOOL success, HttpContext* context, ScheduledMessageResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is not null
        XCTAssertTrue(response!=nil);
		// Test whether the captured response is as we expected
		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"http_code\": 200,\"response_code\": \"SUCCESS\",\"response_msg\": \"5 messages has been cancelled.\",\"data\": {\"count\": 5}}" 
                rightObject: rawBody
                checkValues: false
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}



@end
