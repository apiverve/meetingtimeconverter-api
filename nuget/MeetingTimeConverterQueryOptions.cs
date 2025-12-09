using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MeetingTimeConverter
{
    /// <summary>
    /// Query options for the Meeting Time Converter API
    /// </summary>
    public class MeetingTimeConverterQueryOptions
    {
        /// <summary>
        /// Time in HH:MM format (24-hour)
        /// Example: 14:30
        /// </summary>
        [JsonProperty("time")]
        public string Time { get; set; }

        /// <summary>
        /// Source IANA timezone identifier
        /// Example: America/New_York
        /// </summary>
        [JsonProperty("fromTimezone")]
        public string FromTimezone { get; set; }

        /// <summary>
        /// Target IANA timezone identifier
        /// Example: Europe/London
        /// </summary>
        [JsonProperty("toTimezone")]
        public string ToTimezone { get; set; }

        /// <summary>
        /// Optional date in YYYY-MM-DD format (defaults to today)
        /// Example: 2024-03-15
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
