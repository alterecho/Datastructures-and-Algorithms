//
//  IBMInterviewQ2.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 14/8/24.
//

import Foundation

public class ImplementUDPNetwork: Solution {

    public typealias Input = (server_states: String, k: Int)

    let input: Input

    public required init(input: Input) {
        self.input = input
    }

    public var problemStatement: String {
        """
        Implement a prototype of a UDP network protocol.

        There is a 2d array of size n x 2, requests. At time t = requests[i][0], requests[i][1] packets are to be sent over the network. The network can hold at most max_packets packets in the pipeline. It delivers the data to the client at rate packets per second, i.e. rate packets are removed from the queue and delivered to the client every second.

        If the number of packets exceeds max_packets at any time, the packets remaining at that time are dropped.

        Given the array requests, and the integers, max_packets, and rate, find the total number of packets that are dropped.
        """
    }

    public func execute() -> Int? {
        return nil
    }
}
