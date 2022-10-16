//SPDX-License-Identifier:MIT bunu yazmazsak bazı compilerlar hata veriyor
pragma solidity ^0.8.7;//dilin versiyonu.başa yazdığımız şey(^) ise bu versiyon ve daha sonrakiler için geçerli demek
//6 places to store:Stack,memory,storage,calldata,code,logs
//mapping i bir sözlük gibi düşünebiliriz.
contract SimpleStorage{
    uint256 num;
 
    mapping(string => uint256) public nameToNum;

    struct People{
        uint256 num;
        string name;
    } 
 People[] public people;
 function store(uint256 _num)public {
num=_num;

} 
function retrieve() public view returns(uint256){
    return num;

}

//view ve pure 
function add() public  pure returns(uint256){
    return (6666+22);
}
//calldata modifiye edilemeyen geçici değişken,memory modifiye edilebilen geçici değişken,storage modifiye edilebilen kalıcı değişken
function addPerson(string memory _name, uint256 _num)public{
   people.push(People(_num,_name));
   nameToNum[_name]=_num;
}
}
















//0xd9145CCE52D386f254917e481eB44e9943F39138
//dinamik array önceden size ı belirlenmemiş olan