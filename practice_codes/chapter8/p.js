// async getTopArticles() {
//   console.log('click getTopArticles')
//   const { google } = require('googleapis')
//   const client = await google.auth.getClient({
//     keyFile: '../clientkey.json',
//     scopes: ['https://www.googleapis.com/auth/analytics.readonly'],
//   })
//   console.log('done client res')

//   const analyticsreporting = google.analyticsreporting({
//     version: 'v4',
//     auth: client,
//   })

//   console.log('done analyticsreporting')

//   const res = await analyticsreporting.reports.batchGet({
//     requestBody: {
//       reportRequests: [
//         {
//           viewId: 'G-JVHKNVG6VH',
//           dateRanges: [
//             {
//               startDate: '30daysAgo',
//               endDate: '1daysAgo',
//             },
//           ],
//           dimensions: [
//             {
//               name: 'ga:pagePath',
//             },
//           ],
//           metrics: [
//             {
//               expression: 'ga:pageviewes',
//             },
//           ],
//           orderBys: {
//             fieldName: 'ga:pageviews',
//             sortOrder: 'DESCENDING',
//           },
//         },
//       ],
//     },
//   })
//   console.log(res)
//   this.googleapi = res
// },