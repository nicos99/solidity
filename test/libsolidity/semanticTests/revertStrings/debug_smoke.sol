contract C {
	function d(bytes memory _data) public pure returns (uint8) {
		return abi.decode(_data, (uint8));
	}
}
// ====
// revertStrings: debug
// ----
// d(bytes): 0x20, 0x20, 0x0000000000000000000000000000000000000000000000000000000000000000 -> 0
// f(bytes): 0x20, 0x01, 0x0000000000000000000000000000000000000000000000000000000000000000 -> FAILURE, "Calldata too short"
