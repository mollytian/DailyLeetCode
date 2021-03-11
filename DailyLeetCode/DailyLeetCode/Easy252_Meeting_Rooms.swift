//
//  Easy252_Meeting_Rooms.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/9.
//

import Foundation

class Easy252_Meeting_Rooms {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        return true
    }
    
    
    /*Java
     public boolean canAttendMeetings(Interval[] intervals) {
         Arrays.sort(intervals, new Comparator<Interval>() {
             @Override
             public int compare(Interval o1, Interval o2) {
                 return o1.start - o2.start;
             }
         });
         for (int i = 1; i < intervals.length; i++) {
             if (intervals[i].start < intervals[i - 1]. end) {
                 return false;
             }
         }
         return true;
     }
     */
}
