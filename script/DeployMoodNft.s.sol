// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNFT.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {

    function run() external returns (MoodNft) {

    }

    function svgToImageURI(
        string memory svg
    ) public pure returns (string memory) {
        // Example: 
        // Take - <svg width="1024px" height="1042px"...> 
        // Turn into - Data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAyNHB4IiBoZ...
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(
            bytes(string(abi.encodePacked(svg)))
        );
        return string(abi.encodePacked(baseURL, svgBase64Encoded));
    }

}