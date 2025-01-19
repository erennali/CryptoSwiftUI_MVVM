//
//  CryptoViewModel.swift
//  CryptoCrazySwiftUI
//
//  Created by Eren Ali Koca on 19.01.2025.
//

import Foundation


@MainActor
class CryptoListViewModel : ObservableObject {
    
    @Published var cryptoList = [CryptoViewModel]()
     
    let webservice = Webservice()
    /*
      func downloadCryptosAsync(url : URL) async {
          do {
          let cryptos = try await webservice.downloadCurrenciesAsync(url: url)
              DispatchQueue.main.async {
                  self.cryptoList = cryptos.map(CryptoViewModel.init)
              }
          } catch {
              print(error)
          }
      }
       */
      
      func downloadCryptosContinuation(url : URL) async {
          do {
              let cryptos = try await webservice.downloadCurrenciesContinuation(url: url)
              self.cryptoList = cryptos.map(CryptoViewModel.init)
              /*
              DispatchQueue.main.async {
                  self.cryptoList = cryptos.map(CryptoViewModel.init)
              }
               */
          } catch {
              print(error)
          }
      }
      
      /*
      func downloadCryptos(url : URL) {
          webservice.downloadCurrencies(url: url, completion: { result in
              switch result {
              case .failure(let error):
                  print(error)
              case .success(let cryptos):
                  if let cryptos = cryptos {
                      DispatchQueue.main.async {
                          self.cryptoList = cryptos.map(CryptoViewModel.init)
                      }
                  }
              }
          })
      }
       */
  }

  struct CryptoViewModel {
      
      let crypto : CryptoCurrency
      
      var id : UUID? {
          crypto.id
      }
      
      var currency : String {
          crypto.currency
      }
      
      var price : String {
          crypto.price
      }
      
  }
