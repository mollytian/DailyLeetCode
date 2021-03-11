//
//  Medium253_Meeting_Rooms_II.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/3/9.
//

import Foundation

class Medium253_Meeting_Rooms_II {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        return 0
    }
    
    /* Java
    public int minMeetingRooms(Interval[] intervals) {
        if(intervals == null || intervals.length == 0) return 0;
        Arrays.sort(intervals, (a, b) -> (a.start - b.start));
        int max = 0;
        PriorityQueue<Interval> queue = new PriorityQueue<>(intervals.length, (a, b) -> (a.end - b.end));
        for(int i = 0; i < intervals.length; i++){
            while(!queue.isEmpty() && intervals[i].start >= queue.peek().end)
                queue.poll();
            queue.offer(intervals[i]);
            max = Math.max(max, queue.size());
        }
        return max;
    }
    */
    
    
    
    
    
    
    
}
