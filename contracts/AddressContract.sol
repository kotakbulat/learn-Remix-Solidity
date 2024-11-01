pragma solidity >=0.8.2 <0.9.0;

contract AddressContract{
    
    //address public caller;

    // function getCallerAdddress() public returns(address) {
    //     caller = msg.sender;

    //     return caller;
    // }

    // function   getCallerAddress() public view returns(address caller){
        //check Sender Address (0x5B3...eddC4)
    //     caller = msg.sender;
    // }

    uint receivedAmount;

    function getAddress() public view returns(address){
        //check Smart Contract Address (0xd914...9138)
        address myAddress = address(this);
        return myAddress;
    }

    function receiveEther() payable public{
        //deposit Smart Contract Balance
        receivedAmount = msg.value;
    }

    //address payable
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    } 

    //update
}