declare module '@apiverve/meetingtimeconverter' {
  export interface meetingtimeconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface meetingtimeconverterResponse {
    status: string;
    error: string | null;
    data: MeetingTimeConverterData;
    code?: number;
  }


  interface MeetingTimeConverterData {
      originalTime:   string;
      convertedTime:  string;
      fromTimezone:   string;
      toTimezone:     string;
      timeDifference: number;
      fromOffset:     string;
      toOffset:       string;
  }

  export default class meetingtimeconverterWrapper {
    constructor(options: meetingtimeconverterOptions);

    execute(callback: (error: any, data: meetingtimeconverterResponse | null) => void): Promise<meetingtimeconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: meetingtimeconverterResponse | null) => void): Promise<meetingtimeconverterResponse>;
    execute(query?: Record<string, any>): Promise<meetingtimeconverterResponse>;
  }
}
