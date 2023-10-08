// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// // import 'package:flutter_html_all/flutter_html_all.dart';

// class TradingView extends StatefulWidget {
//   const TradingView({super.key});

//   @override
//   TradingViewState createState() => TradingViewState();
// }

// const htmlData = r"""
// <p id='top'><a href='#'>This is the Link</a></p>

// 	<!-- TradingView Widget BEGIN -->
// <div class="tradingview-widget-container">
//   <div class="tradingview-widget-container__widget"></div>
//   <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets on TradingView</span></a></div>
//   <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
//   {
//   "symbols": [
//     {
//       "proName": "FOREXCOM:SPXUSD",
//       "title": "S&P 500"
//     },
//     {
//       "proName": "FOREXCOM:NSXUSD",
//       "title": "US 100"
//     },
//     {
//       "proName": "FX_IDC:EURUSD",
//       "title": "EUR to USD"
//     },
//     {
//       "proName": "BITSTAMP:BTCUSD",
//       "title": "Bitcoin"
//     },
//     {
//       "proName": "BITSTAMP:ETHUSD",
//       "title": "Ethereum"
//     }
//   ],
//   "showSymbolLogo": true,
//   "colorTheme": "light",
//   "isTransparent": false,
//   "displayMode": "adaptive",
//   "locale": "en"
// }
//   </script>
// </div>
// <!-- TradingView Widget END -->
	
// """;

// class TradingViewState extends State<TradingView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         child: Html(
//           data: htmlData,
//         ),
//       ),
//     );
//   }
// }
