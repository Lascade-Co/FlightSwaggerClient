//
// ApiAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ApiAPI {
    /**

     - parameter data: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiAlertsCreate(data: FlightAlert, completion: @escaping ((_ data: FlightAlert?,_ error: Error?) -> Void)) {
        apiAlertsCreateWithRequestBuilder(data: data).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/alerts/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  

     - returns: RequestBuilder<FlightAlert> 
     */
    open class func apiAlertsCreateWithRequestBuilder(data: FlightAlert) -> RequestBuilder<FlightAlert> {
        let path = "/api/alerts/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FlightAlert>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A UUID string identifying this alert. 
     - parameter data: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiAlertsPartialUpdate(_id: UUID, data: FlightAlert, completion: @escaping ((_ data: FlightAlert?,_ error: Error?) -> Void)) {
        apiAlertsPartialUpdateWithRequestBuilder(_id: _id, data: data).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /api/alerts/{id}/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter _id: (path) A UUID string identifying this alert. 
     - parameter data: (body)  

     - returns: RequestBuilder<FlightAlert> 
     */
    open class func apiAlertsPartialUpdateWithRequestBuilder(_id: UUID, data: FlightAlert) -> RequestBuilder<FlightAlert> {
        var path = "/api/alerts/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FlightAlert>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A UUID string identifying this alert. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiAlertsRead(_id: UUID, completion: @escaping ((_ data: FlightAlert?,_ error: Error?) -> Void)) {
        apiAlertsReadWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/alerts/{id}/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter _id: (path) A UUID string identifying this alert. 

     - returns: RequestBuilder<FlightAlert> 
     */
    open class func apiAlertsReadWithRequestBuilder(_id: UUID) -> RequestBuilder<FlightAlert> {
        var path = "/api/alerts/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FlightAlert>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter _id: (path) A UUID string identifying this alert. 
     - parameter data: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiAlertsUpdate(_id: UUID, data: FlightAlert, completion: @escaping ((_ data: FlightAlert?,_ error: Error?) -> Void)) {
        apiAlertsUpdateWithRequestBuilder(_id: _id, data: data).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /api/alerts/{id}/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter _id: (path) A UUID string identifying this alert. 
     - parameter data: (body)  

     - returns: RequestBuilder<FlightAlert> 
     */
    open class func apiAlertsUpdateWithRequestBuilder(_id: UUID, data: FlightAlert) -> RequestBuilder<FlightAlert> {
        var path = "/api/alerts/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FlightAlert>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter country: (query) Country code to filter results 
     - parameter search: (query) Search term for autocomplete 
     - parameter language: (query) Preferred language for results 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiAutocompleteList(country: String, search: String, language: String, completion: @escaping ((_ data: FlightAutocompleteResponseBodyModel?,_ error: Error?) -> Void)) {
        apiAutocompleteListWithRequestBuilder(country: country, search: search, language: language).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/autocomplete/
     - Fetch autocomplete locations based on country and search query.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter country: (query) Country code to filter results 
     - parameter search: (query) Search term for autocomplete 
     - parameter language: (query) Preferred language for results 

     - returns: RequestBuilder<FlightAutocompleteResponseBodyModel> 
     */
    open class func apiAutocompleteListWithRequestBuilder(country: String, search: String, language: String) -> RequestBuilder<FlightAutocompleteResponseBodyModel> {
        let path = "/api/autocomplete/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "country": country, 
            "search": search, 
            "language": language
        ])

        let requestBuilder: RequestBuilder<FlightAutocompleteResponseBodyModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter code: (query) code (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiCountriesList(code: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: FlightInlineResponse200?,_ error: Error?) -> Void)) {
        apiCountriesListWithRequestBuilder(code: code, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/countries/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter code: (query) code (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)

     - returns: RequestBuilder<FlightInlineResponse200> 
     */
    open class func apiCountriesListWithRequestBuilder(code: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<FlightInlineResponse200> {
        let path = "/api/countries/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "code": code, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FlightInlineResponse200>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter search: (query) A search term. (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiCurrenciesList(ordering: String? = nil, search: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: FlightInlineResponse2001?,_ error: Error?) -> Void)) {
        apiCurrenciesListWithRequestBuilder(ordering: ordering, search: search, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/currencies/
     - 
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter search: (query) A search term. (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)

     - returns: RequestBuilder<FlightInlineResponse2001> 
     */
    open class func apiCurrenciesListWithRequestBuilder(ordering: String? = nil, search: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<FlightInlineResponse2001> {
        let path = "/api/currencies/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "ordering": ordering, 
            "search": search, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FlightInlineResponse2001>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiExploreCreate(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String, completion: @escaping ((_ data: FlightPriceInsightResponseModel?,_ error: Error?) -> Void)) {
        apiExploreCreateWithRequestBuilder(data: data, currency: currency, country: country).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/explore/
     - Get price insights for a months.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 

     - returns: RequestBuilder<FlightPriceInsightResponseModel> 
     */
    open class func apiExploreCreateWithRequestBuilder(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String) -> RequestBuilder<FlightPriceInsightResponseModel> {
        let path = "/api/explore/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "currency": currency, 
            "country": country
        ])

        let requestBuilder: RequestBuilder<FlightPriceInsightResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter arrivalType
     */
    public enum FlightArrivalType_apiExploreList: String { 
        case country = "country"
        case city = "city"
        case airport = "airport"
    }

    /**

     - parameter country: (query) Country code 
     - parameter currency: (query) Currency code 
     - parameter departure: (query) Departure airport code 
     - parameter language: (query) Preferred language 
     - parameter arrivalType: (query) Arrival type 
     - parameter fromDate: (query) Start date for exploration (YYYY-MM-DD) (optional)
     - parameter toDate: (query) End date for exploration (YYYY-MM-DD) (optional)
     - parameter arrivalId: (query) Arrival id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiExploreList(country: String, currency: String, departure: String, language: String, arrivalType: FlightArrivalType_apiExploreList, fromDate: String? = nil, toDate: String? = nil, arrivalId: String? = nil, completion: @escaping ((_ data: FlightExploreResponseModel?,_ error: Error?) -> Void)) {
        apiExploreListWithRequestBuilder(country: country, currency: currency, departure: departure, language: language, arrivalType: arrivalType, fromDate: fromDate, toDate: toDate, arrivalId: arrivalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/explore/
     - Get explore destinations
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter country: (query) Country code 
     - parameter currency: (query) Currency code 
     - parameter departure: (query) Departure airport code 
     - parameter language: (query) Preferred language 
     - parameter arrivalType: (query) Arrival type 
     - parameter fromDate: (query) Start date for exploration (YYYY-MM-DD) (optional)
     - parameter toDate: (query) End date for exploration (YYYY-MM-DD) (optional)
     - parameter arrivalId: (query) Arrival id (optional)

     - returns: RequestBuilder<FlightExploreResponseModel> 
     */
    open class func apiExploreListWithRequestBuilder(country: String, currency: String, departure: String, language: String, arrivalType: FlightArrivalType_apiExploreList, fromDate: String? = nil, toDate: String? = nil, arrivalId: String? = nil) -> RequestBuilder<FlightExploreResponseModel> {
        let path = "/api/explore/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "country": country, 
            "currency": currency, 
            "departure": departure, 
            "from_date": fromDate, 
            "to_date": toDate, 
            "language": language, 
            "arrival_type": arrivalType.rawValue, 
            "arrival_id": arrivalId
        ])

        let requestBuilder: RequestBuilder<FlightExploreResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiExploreOldCreate(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String, completion: @escaping ((_ data: FlightPriceInsightResponseModel?,_ error: Error?) -> Void)) {
        apiExploreOldCreateWithRequestBuilder(data: data, currency: currency, country: country).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/explore-old/
     - Get price insights for a months.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 

     - returns: RequestBuilder<FlightPriceInsightResponseModel> 
     */
    open class func apiExploreOldCreateWithRequestBuilder(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String) -> RequestBuilder<FlightPriceInsightResponseModel> {
        let path = "/api/explore-old/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "currency": currency, 
            "country": country
        ])

        let requestBuilder: RequestBuilder<FlightPriceInsightResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter arrivalType
     */
    public enum FlightArrivalType_apiExploreOldList: String { 
        case country = "country"
        case city = "city"
        case airport = "airport"
    }

    /**

     - parameter country: (query) Country code 
     - parameter currency: (query) Currency code 
     - parameter departure: (query) Departure airport code 
     - parameter language: (query) Preferred language 
     - parameter arrivalType: (query) Arrival type 
     - parameter fromDate: (query) Start date for exploration (YYYY-MM-DD) (optional)
     - parameter toDate: (query) End date for exploration (YYYY-MM-DD) (optional)
     - parameter arrivalId: (query) Arrival id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiExploreOldList(country: String, currency: String, departure: String, language: String, arrivalType: FlightArrivalType_apiExploreOldList, fromDate: String? = nil, toDate: String? = nil, arrivalId: String? = nil, completion: @escaping ((_ data: FlightExploreResponseModel?,_ error: Error?) -> Void)) {
        apiExploreOldListWithRequestBuilder(country: country, currency: currency, departure: departure, language: language, arrivalType: arrivalType, fromDate: fromDate, toDate: toDate, arrivalId: arrivalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/explore-old/
     - Get explore destinations
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter country: (query) Country code 
     - parameter currency: (query) Currency code 
     - parameter departure: (query) Departure airport code 
     - parameter language: (query) Preferred language 
     - parameter arrivalType: (query) Arrival type 
     - parameter fromDate: (query) Start date for exploration (YYYY-MM-DD) (optional)
     - parameter toDate: (query) End date for exploration (YYYY-MM-DD) (optional)
     - parameter arrivalId: (query) Arrival id (optional)

     - returns: RequestBuilder<FlightExploreResponseModel> 
     */
    open class func apiExploreOldListWithRequestBuilder(country: String, currency: String, departure: String, language: String, arrivalType: FlightArrivalType_apiExploreOldList, fromDate: String? = nil, toDate: String? = nil, arrivalId: String? = nil) -> RequestBuilder<FlightExploreResponseModel> {
        let path = "/api/explore-old/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "country": country, 
            "currency": currency, 
            "departure": departure, 
            "from_date": fromDate, 
            "to_date": toDate, 
            "language": language, 
            "arrival_type": arrivalType.rawValue, 
            "arrival_id": arrivalId
        ])

        let requestBuilder: RequestBuilder<FlightExploreResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter data: (body)  
     - parameter searchId: (query) Search id from search initializer 
     - parameter limit: (query) Number of records to return per page (optional)
     - parameter page: (query) Page number to return (optional)
     - parameter airlineIata: (query) Airline IATA code to filter by (For extension only) (optional)
     - parameter flightNumber: (query) Flight number to filter by (For extension only) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiPollCreate(data: FlightPollRequestBodyModel, searchId: String, limit: String? = nil, page: String? = nil, airlineIata: String? = nil, flightNumber: String? = nil, completion: @escaping ((_ data: FlightPollResponseBodyModel?,_ error: Error?) -> Void)) {
        apiPollCreateWithRequestBuilder(data: data, searchId: searchId, limit: limit, page: page, airlineIata: airlineIata, flightNumber: flightNumber).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/poll/
     - Poll flight search results.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  
     - parameter searchId: (query) Search id from search initializer 
     - parameter limit: (query) Number of records to return per page (optional)
     - parameter page: (query) Page number to return (optional)
     - parameter airlineIata: (query) Airline IATA code to filter by (For extension only) (optional)
     - parameter flightNumber: (query) Flight number to filter by (For extension only) (optional)

     - returns: RequestBuilder<FlightPollResponseBodyModel> 
     */
    open class func apiPollCreateWithRequestBuilder(data: FlightPollRequestBodyModel, searchId: String, limit: String? = nil, page: String? = nil, airlineIata: String? = nil, flightNumber: String? = nil) -> RequestBuilder<FlightPollResponseBodyModel> {
        let path = "/api/poll/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit, 
            "page": page, 
            "search_id": searchId, 
            "airline_iata": airlineIata, 
            "flight_number": flightNumber
        ])

        let requestBuilder: RequestBuilder<FlightPollResponseBodyModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiPriceCreate(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String, completion: @escaping ((_ data: FlightPriceInsightResponseModel?,_ error: Error?) -> Void)) {
        apiPriceCreateWithRequestBuilder(data: data, currency: currency, country: country).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/price/
     - Get price insights for a route over three consecutive months.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  
     - parameter currency: (query) Currency code to be used 
     - parameter country: (query) Country code 

     - returns: RequestBuilder<FlightPriceInsightResponseModel> 
     */
    open class func apiPriceCreateWithRequestBuilder(data: FlightPriceInsightRequestCustomDrf, currency: String, country: String) -> RequestBuilder<FlightPriceInsightResponseModel> {
        let path = "/api/price/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "currency": currency, 
            "country": country
        ])

        let requestBuilder: RequestBuilder<FlightPriceInsightResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter data: (body)  
     - parameter country: (header) Country code 
     - parameter userId: (query) User id from MHD&#39;s server 
     - parameter language: (query) Preferred language 
     - parameter appCode: (query) Application code from backend for the project 
     - parameter currency: (query) Currency code to be used (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiSearchCreate(data: FlightFlightSearchRequestBodyModel, country: String, userId: String, language: String, appCode: String, currency: String? = nil, completion: @escaping ((_ data: FlightFlightSearchResponseModel?,_ error: Error?) -> Void)) {
        apiSearchCreateWithRequestBuilder(data: data, country: country, userId: userId, language: language, appCode: appCode, currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /api/search/
     - Initiates flight search.
     - BASIC:
       - type: basic
       - name: Basic
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter data: (body)  
     - parameter country: (header) Country code 
     - parameter userId: (query) User id from MHD&#39;s server 
     - parameter language: (query) Preferred language 
     - parameter appCode: (query) Application code from backend for the project 
     - parameter currency: (query) Currency code to be used (optional)

     - returns: RequestBuilder<FlightFlightSearchResponseModel> 
     */
    open class func apiSearchCreateWithRequestBuilder(data: FlightFlightSearchRequestBodyModel, country: String, userId: String, language: String, appCode: String, currency: String? = nil) -> RequestBuilder<FlightFlightSearchResponseModel> {
        let path = "/api/search/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "user_id": userId, 
            "currency": currency, 
            "language": language, 
            "app_code": appCode
        ])
        let nillableHeaders: [String: Any?] = [
            "country": country
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FlightFlightSearchResponseModel>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiSearchDelete(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiSearchDeleteWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /api/search/delete/
     - API endpoint for initiating a flight search.
     - BASIC:
       - type: basic
       - name: Basic

     - returns: RequestBuilder<Void> 
     */
    open class func apiSearchDeleteWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/api/search/delete/"
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiSearchDelete_0(_id: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiSearchDelete_0WithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /api/search/{id}/
     - API endpoint for initiating a flight search.
     - BASIC:
       - type: basic
       - name: Basic
     
     - parameter _id: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func apiSearchDelete_0WithRequestBuilder(_id: String) -> RequestBuilder<Void> {
        var path = "/api/search/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = FlightSwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = FlightSwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
