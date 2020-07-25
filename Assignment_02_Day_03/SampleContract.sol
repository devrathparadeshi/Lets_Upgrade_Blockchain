pragma solidity >=0.4.22 <0.7.0;
contract Land{
    string public name;
    string public size;
    string public price;
    string public place;
    
    function Land(string newname,string newsize,string newprice,string newplace) public{
        name = newname;
        size = newsize;
        price = newprice;
        place = newplace;
    }
    
    function setDetails(string newname, string newsize,string newprice, string newplace) public{
        name = newname;
        size = newsize;
        price = newprice;
        place = newplace;
    }
    function getDetails()public view returns(string,string,string,string){
        return(name,size,price,place);
    }
    
}