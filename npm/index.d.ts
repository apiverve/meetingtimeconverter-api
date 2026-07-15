declare module '@apiverve/meetingtimeconverter' {
  export interface meetingtimeconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface meetingtimeconverterResponse {
    status: string;
    error: string | null;
    data: MeetingTimeConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MeetingTimeConverterData {
      originalTime:   null | string;
      convertedTime:  null | string;
      fromTimezone:   null | string;
      toTimezone:     null | string;
      timeDifference: number | null;
      fromOffset:     null | string;
      toOffset:       null | string;
  }

  export default class meetingtimeconverterWrapper {
    constructor(options: meetingtimeconverterOptions);

    execute(callback: (error: any, data: meetingtimeconverterResponse | null) => void): Promise<meetingtimeconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: meetingtimeconverterResponse | null) => void): Promise<meetingtimeconverterResponse>;
    execute(query?: Record<string, any>): Promise<meetingtimeconverterResponse>;
  }
}
