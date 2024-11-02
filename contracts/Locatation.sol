// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//lokasi data
//gas

//storage
//memory
//calldata
//stack

contract DataLocation{
    //storage
    uint stateStorage;

    //uint storage stateStorage; //error

    //memory
    function calculation(uint a, uint b) public pure returns(uint result){
        return a+b;
    }
}

// contract Locations{
//     //storage, saved in state variable storage, more gas
//     bool isReady;

//     function iniFunction() public pure {
//         //value, saved in local variable memory(local storage), less gas
//         bool isOke;
//         uint number;
//         address akun;
//     }
// }

// contract Locations {
//     //Test to check state variable - local variable interaction
//     uint public stateVariable1 = 10;
//     uint stateVariable2 = 20;

//     function iniFungsi() public returns(uint){
//         stateVariable1 = stateVariable2;
//         stateVariable2 = 30;

//         return stateVariable1;
//     }
// }

// contract Locations {
//     uint stateVar = 10;

//     function iniFungsi() public returns(uint) {
//         uint localVar = 20; //memory
//         stateVar = localVar;
//         localVar = 40;

//         return stateVar;
//     }
// }

// contract Locations {
//     uint stateVar = 10; //storage

//     function iniFungsi()public returns(uint){
//         uint localVar = 20;
//         localVar = stateVar;

//         stateVar = 40;
//         return localVar;
//     }
// }

contract Locations {
    function iniFungsi() public pure returns(uint[] memory, uint[] memory){
        //memory reference type as array cannot duplicate (result only 1 same array synced)
        uint[] memory localMemoryArray1 = new uint[](3);

        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return(localMemoryArray1, localMemoryArray2);

    }

    function inivalue() public pure returns(uint){
        //direct value change can duplicate (result 2 different variable)
        uint localVar1 = 10;
        uint localVar2 = 20;

        localVar1 = localVar2;
        localVar1 = 40;

        return localVar1;
    }
}