import XCTest
@testable import SolanaWrapper

final class SolanaWrapperTests: XCTestCase {
    func testTransportInstanceIsNotNil() {
        let solana = SolanaWrapper()
        XCTAssertNotNil(solana.transportInstance)
    }
    
    func testSolanaInstanceIsNotNil() {
        let solana = SolanaWrapper()
        XCTAssertNotNil(solana.solanaInstance)
    }
}
