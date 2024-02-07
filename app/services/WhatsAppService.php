<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class WhatsAppService
{
    protected $baseUrl;
    protected $apiKey;
    public $listOfAvailbleNumbers = ['201275873246','201155032697','201210330630','201050507505'];

    public function __construct()
    {
        // Set up base URL and API key/token
        $this->baseUrl ='https://graph.facebook.com/v17.0/180413738496947';
        $this->apiKey = 'EAAFDwDkTW4wBOZBoY71uziaAjL3Y1oY3PVSA0k8qhQ2y0xhQZCVWZCW7JMA4XNuFOvKCjZCBleaSzVZCedRqKCxBfWMPlrHPQkS0nZAvxoGiWLZBhVEbTu88lrSnF8v0TdGjZBTIrjK4ZBH4PZA7kyCZB8Abr3nYVt5ZB866zq1cT27WYFrbKCkE5RIl7tcKlw5CZAbpIVrLUgPOVPL37DdZCdN4gZD'; // Replace with your actual API key/token
    }

    public function fetchData($params = [])
    {
        $url = $this->baseUrl . '/endpoint'; // Replace 'endpoint' with the actual endpoint

        try {

            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $this->apiKey,
                'Accept' => 'application/json',
            ])->get($url, $params);

            if ($response->successful()) {
                return $response->json(); // Return the JSON response
            } else {
                // Handle error responses
                return [
                    'status'=>false,
                    'msg'=>'',
                    'error' => 'Failed to fetch data. Status Code: ' . $response->status()
                ];
            }
        } catch (\Exception $e) {
            // Catch any exceptions that occur during the API request
            return [
                'error' => 'Exception: ' . $e->getMessage()
            ];
        }
    }

    // Example method to send data to the API
    public function sendData(string $msg = '', string $number,string $template = 'order_update'): array
    {
        // validtion
        $checkValidNumber = in_array($number,$this->listOfAvailbleNumbers);
        if(!$checkValidNumber){
            return [
                'status'=>false,
                'msg'=>'invaid phone number',
            ];
        }



        $url = $this->baseUrl . '/messages'; // Replace with the actual endpoint to send data
        $accessToken = $this->apiKey;
        $messagingProduct = 'whatsapp';
        $recipientNumber = $number;
        $templateName = $template;
        // $recipientNumber = '201275873246';
        // $templateName = 'hello_world';
        $languageCode = 'en_US';
        try {

            $data = [
                'messaging_product' => $messagingProduct,
                'to' => $recipientNumber,
                'type' => 'template',
                'template' => [
                    'name' => $templateName,
                    'language' => [
                        'code' => $languageCode,
                    ],
                    'components' => [
                        [
                            "type" => "body",
                            "parameters" => [
                                [
                                    "type" => "text",
                                    "text" => $msg
                                ]
                            ]
                        ]

                    ],

                ],
            ];
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $accessToken,
                'Content-Type' => 'application/json',
            ])->post($url, $data);


            if ($response->successful()) {
                $response = $response->json(); // Return the JSON response
                return [
                    'status'=>true,
                    'msg'=>'sent',
                ];
            } else {
                // Handle error responses
                return [
                    'status'=>false,
                    'msg' =>  $response->json(),
                    // 'error' => 'Failed to send data. Status Code: ' . $response->status(),

                ];
            }
        } catch (\Exception $e) {
            // Catch any exceptions that occur during the API request
            return [
                'status'=>false,
                'msg' => 'Exception: ' . $e->getMessage()
            ];
        }
    }
}
